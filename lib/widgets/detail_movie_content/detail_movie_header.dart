import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/cubits/cubits.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:movie_app/cubits/states.dart';
import 'package:movie_app/data/model/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/screens/screens.dart';
import 'package:movie_app/themes/themes.dart';
import 'package:auto_route/auto_route.dart';

class DetailMovieHeader extends StatefulWidget {
  final DetailMovieResponse movie;

  DetailMovieHeader(this.movie);

  @override
  _DetailMovieHeaderState createState() => _DetailMovieHeaderState();
}

class _DetailMovieHeaderState extends State<DetailMovieHeader> {
  final _youtubePlayerCubit = kiwi.KiwiContainer().resolve<YoutubePlayerCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _youtubePlayerCubit,
      child: BlocBuilder<YoutubePlayerCubit, YoutubePlayerState>(builder: (context, state) {
        if(state is YoutubePlayerInitialState){
          return _buildBanner();
        };

        if(state is YoutubePlayerShowBannerState){
          return _buildBanner();
        };

        if(state is YoutubePlayerShowTrailerState){
          return Stack(children: [
            YoutubePlayerScreen(youTubeId: state.youtubeVideoId,),
            Positioned(
              top: 58,
              left: 10,
              child: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
                _youtubePlayerCubit.showBanner();
              },),
            )
          ],);
        };

        return _buildBanner();
      },),
    );
  }

  Widget _buildBanner(){
    return Stack(
      children: <Widget>[
        HeaderDetailMovie(
          title: widget.movie.title,
          imagePath: widget.movie.backdrop_path,
        ),
        Positioned(bottom: 0, child: _buildBottomHeader()),
        Positioned(
          child: _playIconButton(context),
          bottom: MediaQuery.of(context).size.height * 0.01,
          right: 15.0,
        ),
      ],
    );
  }

  Widget _playIconButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).accentColor,
      ),
      child: GestureDetector(
        onTap: () {
          _youtubePlayerCubit.loadTrailer(widget.movie.id);
        },
        child: Icon(
          Icons.play_arrow,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildBottomHeader() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: _buildRateBar(),
          ),
        ],
      ),
    );
  }

  Widget _buildRateBar(){
    return Row(
      children: <Widget>[
        Text(widget.movie.vote_average.toString()),
        SizedBox(
          width: 10,
        ),
        RatingBar(
            initialRating: widget.movie.vote_average / 2,
            direction: Axis.horizontal,
            minRating: 1,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 10,
            itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
            onRatingUpdate: (val) {}),
      ],
    );
  }
}

class HeaderDetailMovie extends StatelessWidget {
  final String title;
  final String imagePath;

  HeaderDetailMovie({@required this.title, @required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03),
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://image.tmdb.org/t/p/original/$imagePath'))),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Custom.mainColor.withOpacity(1.0),
                      Custom.mainColor.withOpacity(0.0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [
                      0.0,
                      0.9,
                    ]),
              ),
            ),
          ),
          Positioned.fill(
              child: Align(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                alignment: Alignment.bottomCenter,
              )),
          Positioned(
            top: 58,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                context.navigator.pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
