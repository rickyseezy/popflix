import 'package:movie_app/data/model/detailMovie/detail_movie.dart';
import 'package:movie_app/data/model/genre/genre_response.dart';
import 'package:movie_app/data/model/popularMovies/popular_movies_response.dart';
import 'package:movie_app/data/model/topRatedMovies/top_rated_movies_response.dart';
import 'package:movie_app/data/model/trendingPersons/trending_persons_response.dart';
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

}