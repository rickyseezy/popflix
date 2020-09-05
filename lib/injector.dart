import 'package:http/http.dart';
import 'package:kiwi/kiwi.dart';
import 'package:movie_app/data/network/movie_data_source.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/cubits/genre/genre_cubit.dart';
import 'package:movie_app/cubits/slider/slider_cubit.dart';
import 'package:movie_app/cubits/top_rated_movies/top_rated_movies_cubit.dart';
import 'package:movie_app/cubits/trending_persons/trending_persons_cubit.dart';
import 'package:movie_app/cubits/upcoming_movies/upcoming_movies_cubit.dart';
import 'package:movie_app/cubits/detail_movie/detail_movie_cubit.dart';
import 'package:movie_app/cubits/movie_credit/movie_credit_cubit.dart';
import 'package:movie_app/cubits/similar_movie/similar_movies_cubit.dart';
import 'package:movie_app/cubits/youtube_player/youtube_player_cubit.dart';
part 'injector.g.dart';

abstract class Injector {
  static KiwiContainer container;

  static void initKiwi() {
    container = KiwiContainer();
    _$Injector()._configure();
  }

  void _configure() {
    _configureMoviesModule();
    _configureCubitsModuleFactories();
  }

  void _configureMoviesModule() {
    _configureMoviesModuleInstance();
    _configureMoviesModuleFactories();
  }

  @Register.factory(MovieDataSource)
  @Register.factory(MovieRepository)
  void _configureMoviesModuleFactories();


  @Register.factory(SliderCubit)
  @Register.factory(GenreCubit)
  @Register.factory(UpcomingMoviesCubit)
  @Register.factory(TopRatedMoviesCubit)
  @Register.factory(TrendingPersonsCubit)
  @Register.factory(DetailMovieCubit)
  @Register.factory(MovieCreditCubit)
  @Register.factory(SimilarMoviesCubit)
  @Register.factory(YoutubePlayerCubit)
  void _configureCubitsModuleFactories();

  void _configureMoviesModuleInstance(){
    container.registerInstance(Client());
  }

}