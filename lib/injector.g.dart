// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  void _configureMoviesModuleFactories() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory((c) => MovieDataSource(c<Client>()));
    container.registerFactory((c) => MovieRepository(c<MovieDataSource>()));
  }

  void _configureCubitsModuleFactories() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory((c) => SliderCubit(c<MovieRepository>()));
    container.registerFactory((c) => GenreCubit(c<MovieRepository>()));
    container.registerFactory((c) => UpcomingMoviesCubit(c<MovieRepository>()));
    container.registerFactory((c) => TopRatedMoviesCubit(c<MovieRepository>()));
    container
        .registerFactory((c) => TrendingPersonsCubit(c<MovieRepository>()));
    container.registerFactory((c) => DetailMovieCubit(c<MovieRepository>()));
    container.registerFactory((c) => MovieCreditCubit(c<MovieRepository>()));
    container.registerFactory((c) => SimilarMoviesCubit(c<MovieRepository>()));
    container.registerFactory((c) => YoutubePlayerCubit(c<MovieRepository>()));
  }
}
