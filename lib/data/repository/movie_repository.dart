import 'package:movie_app/data/model/detail_movie/detail_movie_response.dart';
import 'package:movie_app/data/model/genre/genre_response.dart';
import 'package:movie_app/data/model/movie_credit/movie_credit_response.dart';
import 'package:movie_app/data/model/movie_videos/movie_videos.dart';
import 'package:movie_app/data/model/popular_movies/popular_movies_response.dart';
import 'package:movie_app/data/model/similar_movie/similar_movie_response.dart';
import 'package:movie_app/data/model/top_rated_movies/top_rated_movies_response.dart';
import 'package:movie_app/data/model/trending_persons/trending_persons_response.dart';
import 'package:movie_app/data/network/movie_data_source.dart';

class MovieRepository {
  MovieDataSource _movieDataSource;

  MovieRepository(this._movieDataSource);

  Future<PopularMovieResponse> getPopularMovies() async {
    final response = await _movieDataSource.getPopularMovies();
    if(response.results == null || response.results.isEmpty) {
      throw EmptyMovieException();
    }

    return response;
  }

  Future<SimilarMovieResponse> getSimilarMovies(int id) async {
    final response = await _movieDataSource.getSimilarMovies(id);

    if(response.results == null || response.results.isEmpty) {
      throw EmptyMovieException();
    }

    return response;
  }

  Future<GenreResponse> getGenreMoviesList() async {
    final response = await _movieDataSource.getGenres();

    if(response == null || response.genres.isEmpty) {
      throw EmptyMovieException();
    }

    return response;
  }

  Future<TopRatedMoviesResponse> getTopRatedMovies() async {
    final response = await _movieDataSource.getTopRatedMovies();

    if(response == null || response.results.isEmpty) {
      throw EmptyMovieException();
    }

    return response;
  }

  Future<TrendingPersonsResponse> getTrendingPersons() async {
    final response = await _movieDataSource.getTrendingPersons();

    if(response == null || response.results.isEmpty) {
      throw EmptyMovieException();
    }

    return response;
  }

  Future<DetailMovieResponse> getMovieDetails(int id) async {
    final response = await _movieDataSource.getMovieDetails(id);

    if(response == null) {
      throw EmptyMovieException();
    }

    return response;
  }

  Future<MovieCreditResponse> getMovieCredit(int id) async {
    final response = await _movieDataSource.getMovieCredit(id);

    if(response == null) {
      throw EmptyMovieException();
    }

    return response;
  }

  Future<MovieVideosResponse> getMovieVideos(int id) async {
    try {
      final response = await _movieDataSource.getMovieVideos(id);

      if(response == null) {
        throw EmptyMovieException();
      }
      return response;
    } catch (e){
      print(e);
    }
  }

}