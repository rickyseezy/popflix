// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  void _configureDetailMovieModuleFactories() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory((c) => DetailMovieCubit(c<MovieRepository>()));
  }

  void _configureMoviesModuleFactories() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory((c) => MovieDataSource(c<Client>()));
    container.registerFactory((c) => MovieRepository(c<MovieDataSource>()));
  }

  void _configureSliderModuleFactories() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory((c) => SliderCubit(c<MovieRepository>()));
  }

  void _configureGenreModuleFactories() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory((c) => GenreCubit(c<MovieRepository>()));
  }

  void _configureUpcomingMoviesModuleFactories() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory((c) => UpcomingMoviesCubit(c<MovieRepository>()));
  }

  void _configureTopRatedMoviesModuleFactories() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory((c) => TopRatedMoviesCubit(c<MovieRepository>()));
  }

  void _configureTrendingPersonsModuleFactories() {
    final KiwiContainer container = KiwiContainer();
    container
        .registerFactory((c) => TrendingPersonsCubit(c<MovieRepository>()));
  }
}
