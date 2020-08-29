import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/themes/themes.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:movie_app/ui/homepage/topRatedMovies/top_rated_movies_cubit.dart';
import 'package:movie_app/ui/homepage/topRatedMovies/top_rated_movies_state.dart';
import 'package:movie_app/widgets/movies_list.dart';

class TopRatedMovies extends StatefulWidget {
  @override
  _TopRatedMoviesState createState() => _TopRatedMoviesState();
}

class _TopRatedMoviesState extends State<TopRatedMovies> {
  final _topRatedMoviesCubit = kiwi.KiwiContainer().resolve<TopRatedMoviesCubit>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _topRatedMoviesCubit.loadTopRatedMovies();

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            'TOP RATED MOVIES',
            style: TextStyle(fontSize: 12, color: Custom.titleColor),
          ),
        ),
        BlocProvider(
          create: (_) => _topRatedMoviesCubit,
            child: BlocBuilder<TopRatedMoviesCubit, TopRatedMoviesState>(
              builder: (context, state) {
                if(state is TopRatedMoviesLoadingState) {
                  return _onLoading(context);
                }

                if(state is TopRatedMoviesLoadedState) {
                  return _onSuccess(context, state);
                }

                return _onLoading(context);
              },
            ))
      ],
    );
  }

  Widget _onLoading(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.34,
      child: Center(child: CircularProgressIndicator(),),
    );
  }

  Widget _onSuccess(BuildContext context, TopRatedMoviesLoadedState state) {
    final movies = state.videos.toList();
    return Container(
      height: MediaQuery.of(context).size.height * 0.34,
      child: MovieList(movies: movies, searchIndex: 0),
    );
  }
}
