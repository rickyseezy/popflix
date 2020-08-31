import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/data/model/detailMovie/detail_movie.dart';
import 'package:movie_app/themes/themes.dart';
import 'package:movie_app/ui/homepage/movie_credit/movie_credit_cubit.dart';
import 'package:movie_app/ui/homepage/movie_credit/movie_credit_state.dart';
import 'package:movie_app/widgets/avatar_list/avatar_list.dart';
import 'package:movie_app/widgets/detail_movie/detail_movie_cubit.dart';
import 'package:movie_app/widgets/detail_movie/detail_movie_state.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class DetailMovie extends StatefulWidget {
  final int id;

  DetailMovie(@required this.id);

  @override
  _DetailMovieState createState() => _DetailMovieState();
}

class _DetailMovieState extends State<DetailMovie> {
  final _detailMovieCubit = kiwi.KiwiContainer().resolve<DetailMovieCubit>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _detailMovieCubit.loadMovie(widget.id);
    //_movieCreditCubit.loadCast(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _detailMovieCubit,
      child: BlocBuilder<DetailMovieCubit, DetailMovieState>(
        builder: (context, state) {
          if (state is DetailMovieLoadingState) {
            return Scaffold(
                body: Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ));
          }

          if (state is DetailMovieLoadedState) {
            final DetailMovieResponse movie = state.result;
            return Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: <Widget>[CustomHeader(state.result), Content(movie)],
                ),
              ),
            );
          }

          return Scaffold(
              body: Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ));
        },
      ),
    );
  }
}

class Content extends StatefulWidget {
  final DetailMovieResponse movie;

  Content(this.movie);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  final _movieCreditCubit = kiwi.KiwiContainer().resolve<MovieCreditCubit>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _movieCreditCubit.loadCast(widget.movie.id);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Custom.mainColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Text(
              'OVERVIEW',
              style: TextStyle(color: Custom.titleColor, fontSize: 12),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              widget.movie.overview,
              style: TextStyle(fontSize: 11),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildItem(context,
                    title: 'BUDGET',
                    value: widget.movie.budget.toString(),
                    isPrice: true),
                _buildItem(context,
                    title: 'DURATION',
                    value: '${widget.movie.runtime.toString()}min',
                    isPrice: false),
                _buildItem(context,
                    title: 'RELEASE DATE',
                    value: widget.movie.release_date,
                    isPrice: false)
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text('GENRES',
                style: TextStyle(color: Custom.titleColor, fontSize: 12)),
            SizedBox(
              height: 15,
            ),
            Wrap(children: _buildGenreTag(), spacing: 8,),
            SizedBox(
              height: 15,
            ),
            Text('CASTS',
                style: TextStyle(color: Custom.titleColor, fontSize: 12)),
            BlocProvider(
              create: (_) => _movieCreditCubit,
              child: BlocBuilder<MovieCreditCubit, MovieCreditState>(
                builder: (context, state) {
                  if(state is MovieCreditLoadingState){
                    return _onLoading();
                  }

                  if(state is MovieCreditLoadedState){
                    print('is loaded');
                    return AvatarRoleList(state.cast.toList());
                  }

                  return _onLoading();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _onLoading() {
    return Container(
        height: MediaQuery.of(context).size.height * 0.13,
      child: Center(child: CircularProgressIndicator(),),);
  }

  List<Widget> _buildGenreTag() {
    TextStyle style = TextStyle(fontSize: 8);
    return widget.movie.genres.map((m) {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            m.name,
            style: style,
          ),
        ),
      );
    }).toList();
  }

  Widget _buildItem(BuildContext ctx,
      {String title, String value, bool isPrice}) {
    TextStyle valueStyle = TextStyle(
      color: Theme.of(ctx).accentColor,
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
    TextStyle titleStyle = TextStyle(
        color: Custom.titleColor, fontWeight: FontWeight.bold, fontSize: 12);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: titleStyle,
        ),
        SizedBox(
          height: 10,
        ),
        isPrice
            ? Text(
                '$value\$',
                style: valueStyle,
              )
            : Text(
                '$value',
                style: valueStyle,
              )
      ],
    );
  }
}

class CustomHeader extends StatelessWidget {
  final DetailMovieResponse movie;

  CustomHeader(this.movie);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        HeaderDetailMovie(
          title: movie.title,
          imagePath: movie.backdrop_path,
        ),
        Positioned(bottom: 0, child: BottomContent(movie)),
        Positioned(
          child: CustomPlayIcon(),
          bottom: MediaQuery.of(context).size.height * 0.01,
          right: 15.0,
        ),
      ],
    );
  }
}

class BottomContent extends StatelessWidget {
  final DetailMovieResponse movie;

  BottomContent(this.movie);

  @override
  Widget build(BuildContext context) {
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
            child: RateBar(movie),
          ),
        ],
      ),
    );
  }
}

class RateBar extends StatelessWidget {
  final DetailMovieResponse movie;

  RateBar(this.movie);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(movie.vote_average.toString()),
        SizedBox(width: 10,),
        RatingBar(
            initialRating: movie.vote_average / 2,
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

class CustomPlayIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).accentColor,
      ),
      child: GestureDetector(
        onTap: () {
          print('tapped');
        },
        child: Icon(
          Icons.play_arrow,
          size: 20,
          color: Colors.white,
        ),
      ),
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
