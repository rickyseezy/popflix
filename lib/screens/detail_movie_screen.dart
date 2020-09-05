import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/model/models.dart';
import 'package:movie_app/themes/themes.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:movie_app/cubits/states.dart';
import 'package:movie_app/cubits/cubits.dart';
import 'package:movie_app/widgets/detail_movie_content/detail_movie_header.dart';
import 'package:movie_app/widgets/widgets.dart';

class DetailMovieScreen extends StatefulWidget {
  final int id;

  DetailMovieScreen(@required this.id);

  @override
  _DetailMovieScreenState createState() => _DetailMovieScreenState();
}

class _DetailMovieScreenState extends State<DetailMovieScreen> {
  final _detailMovieCubit = kiwi.KiwiContainer().resolve<DetailMovieCubit>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _detailMovieCubit.loadMovie(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _detailMovieCubit,
      child: BlocBuilder<DetailMovieCubit, DetailMovieState>(
        builder: (context, state) {
          if (state is DetailMovieLoadingState) {
            return _onLoading(context);
          }

          if (state is DetailMovieLoadedState) {
            final DetailMovieResponse movie = state.result;
            return _onSuccess(movie);
          }

          if (state is DetailMovieErrorState) {
            return Scaffold(
                body: Container(
                  child: Center(
                    child: Text('Oops an error occured !'),
                  ),
                ));
          }

          return _onLoading(context);
        },
      ),
    );
  }

  Widget _onLoading(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }

  Widget _onSuccess(DetailMovieResponse movie){
    return Scaffold(
      backgroundColor: Custom.mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DetailMovieHeader(movie),
            DetailMovieContent(movie)
          ],
        ),
      ),
    );
  }
}
