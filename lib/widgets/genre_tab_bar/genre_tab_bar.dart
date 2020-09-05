import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:movie_app/cubits/cubits.dart';
import 'package:movie_app/cubits/states.dart';
import 'package:movie_app/themes/themes.dart';
import 'package:movie_app/widgets/widgets.dart';

class GenreTabBar extends StatefulWidget {
  @override
  _GenreTabBarState createState() => _GenreTabBarState();
}

class _GenreTabBarState extends State<GenreTabBar> {
  final _genreCubit = kiwi.KiwiContainer().resolve<GenreCubit>();
  final _upcomingMoviesCubit = kiwi.KiwiContainer().resolve<UpcomingMoviesCubit>();
  final List<Tab> genres = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _genreCubit.loadGenres();
    _upcomingMoviesCubit.loadUpcomingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<GenreCubit>(
            create: (_) => _genreCubit,
          ),
          BlocProvider<UpcomingMoviesCubit>(
            create: (_) => _upcomingMoviesCubit,
          )
        ],
        child: BlocBuilder<GenreCubit, GenreState>(
          builder: (context, state) {
            if (state is GenreLoadingState) {
              return _onLoading(context);
            }

            if (state is GenreLoadedState) {
              return _onSuccess(context, state);
            }

            return _onLoading(context);
          },
        ));
  }

  Widget _onLoading(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _onSuccess(BuildContext context, GenreLoadedState state) {
    final genreIds = state.genres;
    int movieSearchIndex = state.genres[0].id;
    state.genres.forEach((genre) {
      genres.add(Tab(
        text: genre.name,
      ));
    });
    return Container(
      height: 300,
      child: DefaultTabController(
          length: genres.length,
          child: Builder(
            builder: (BuildContext context) {
              final TabController tabController =
                  DefaultTabController.of(context);
              tabController.addListener(() {
                if (!tabController.indexIsChanging) {
                  movieSearchIndex = genreIds[tabController.index].id;
                  _upcomingMoviesCubit.changeTab(movieSearchIndex);
                }
              });
              return Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(50.0),
                  child: AppBar(
                    bottom: TabBar(
                      indicatorColor: Custom.secondColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 3.0,
                      unselectedLabelColor: Custom.titleColor,
                      labelColor: Colors.white,
                      isScrollable: true,
                      tabs: genres.toList(),
                    ),
                  ),
                ),
                body: BlocBuilder<UpcomingMoviesCubit, UpcomingMoviesState>(
                  builder: (builder, state) {
                    if (state is UpcomingMoviesChangeTabState) {
                      movieSearchIndex = state.currentIndex;
                    }

                    if (state is UpcomingMoviesLoadedState) {
                      return _buildListItem(context, state, movieSearchIndex);
                    }
                    return TabBarView(
                      children: genres.map((Tab t) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }).toList(),
                    );
                  },
                ),
              );
            },
          )),
    );
  }

  Widget _buildListItem(
      BuildContext context, UpcomingMoviesLoadedState state, movieSearchIndex) {
    final movies =
        state.videos.where((v) => v.genre_ids.contains(movieSearchIndex)).toList();

    return MovieList(movies: movies, searchIndex: movieSearchIndex,);
  }
}
