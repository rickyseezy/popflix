import 'package:flutter/material.dart';
import 'package:movie_app/cubits/cubits.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:movie_app/cubits/states.dart';
import 'package:movie_app/data/model/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/themes/themes.dart';
import 'package:movie_app/widgets/widgets.dart';

class DetailMovieContent extends StatefulWidget {
  final DetailMovieResponse movie;

  DetailMovieContent(this.movie);

  @override
  _DetailMovieContentState createState() => _DetailMovieContentState();
}

class _DetailMovieContentState extends State<DetailMovieContent> {
  final _movieCreditCubit = kiwi.KiwiContainer().resolve<MovieCreditCubit>();
  final _similarMoviesCubit =
  kiwi.KiwiContainer().resolve<SimilarMoviesCubit>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _movieCreditCubit.loadCast(widget.movie.id);
    _similarMoviesCubit.loadSimilarMovies(widget.movie.id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Custom.mainColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
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
            Wrap(
              children: _buildGenreTag(),
              spacing: 8,
            ),
            SizedBox(
              height: 15,
            ),
            Text('CASTS',
                style: TextStyle(color: Custom.titleColor, fontSize: 12)),
            BlocProvider(
              create: (_) => _movieCreditCubit,
              child: BlocBuilder<MovieCreditCubit, MovieCreditState>(
                builder: (context, state) {
                  if (state is MovieCreditLoadingState) {
                    return _onLoading();
                  }

                  if (state is MovieCreditLoadedState) {
                    final List<Character> personsList = [];

                    state.cast.forEach((p) {
                      final person = Character((b) => b..name= p.name
                        ..profile_path = p.profile_path);
                      personsList.add(person);
                    });
                    return AvatarRoleList(personsList);
                  }

                  return _onLoading();
                },
              ),
            ),
            Text('SIMILAR MOVIES',
                style: TextStyle(color: Custom.titleColor, fontSize: 12)),
            SizedBox(
              height: 15,
            ),
            BlocProvider(
              create: (_) => _similarMoviesCubit,
              child: BlocBuilder<SimilarMoviesCubit, SimilarMoviesState>(
                builder: (context, state) {
                  if (state is SimilarMoviesLoadingState) {
                    return _onSimilarMovieLoading();
                  }

                  if (state is SimilarMoviesLoadedState) {
                    return Container(
                        height: 230,
                        child: MovieList(movies: state.videos.toList(), searchIndex: 0,));
                  }

                  if (state is SimilarMoviesErrorState) {
                    return Container(
                        height: 200,
                        child: Center(child: Text('Oops, no similar movies has been found !', style: TextStyle(color: Custom.secondColor, fontWeight: FontWeight.bold),),));
                  }
                  return _onSimilarMovieLoading();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _onSimilarMovieLoading() {
    return Container(
      height: 200,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _onLoading() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
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