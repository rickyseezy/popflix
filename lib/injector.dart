import 'package:http/http.dart';
import 'package:kiwi/kiwi.dart';
import 'package:movie_app/data/network/movie_data_source.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/ui/homepage/genderTabBar/genre_cubit.dart';
import 'package:movie_app/ui/homepage/genderTabBar/upcoming_movies_cubit.dart';
import 'package:movie_app/ui/homepage/slider/slider_cubit.dart';
import 'package:movie_app/ui/homepage/topRatedMovies/top_rated_movies_cubit.dart';
import 'package:movie_app/ui/homepage/trendingPersons/trending_persons_cubit.dart';
part 'injector.g.dart';

abstract class Injector {
  static KiwiContainer container;

  static void initKiwi() {
    container = KiwiContainer();
    _$Injector()._configure();
  }

  void _configure() {
    _configureMoviesModule();
    _configureSliderModule();
    _configureGenreModule();
    _configureUpcomingMoviesModule();
    _configureTrendingPersonsModule();
    _configureTopRatedMoviesModule();
  }

  void _configureMoviesModule() {
    _configureMoviesModuleInstance();
    _configureMoviesModuleFactories();
  }

  void _configureSliderModule() {
    _configureSliderModuleFactories();
  }

  void _configureGenreModule() {
    _configureGenreModuleFactories();
  }

  void _configureTrendingPersonsModule() {
    _configureTrendingPersonsModuleFactories();
  }

  void _configureUpcomingMoviesModule() {
    _configureUpcomingMoviesModuleFactories();
  }

  void _configureTopRatedMoviesModule() {
    _configureTopRatedMoviesModuleFactories();
  }

  @Register.factory(MovieDataSource)
  @Register.factory(MovieRepository)
  void _configureMoviesModuleFactories();


  @Register.factory(SliderCubit)
  void _configureSliderModuleFactories();

  @Register.factory(GenreCubit)
  void _configureGenreModuleFactories();

  @Register.factory(UpcomingMoviesCubit)
  void _configureUpcomingMoviesModuleFactories();

  @Register.factory(TopRatedMoviesCubit)
  void _configureTopRatedMoviesModuleFactories();

  @Register.factory(TrendingPersonsCubit)
  void _configureTrendingPersonsModuleFactories();

  void _configureMoviesModuleInstance(){
    container.registerInstance(Client());
  }

}