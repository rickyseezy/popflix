import 'package:http/http.dart' as http;
import 'package:movie_app/data/model/detailMovie/detail_movie.dart';
import 'package:movie_app/data/model/genre/genre_response.dart';
import 'package:movie_app/data/model/movieCredit/castItem/movie_credit_response.dart';
import 'package:movie_app/data/model/popularMovies/popular_movies_response.dart';
import 'package:movie_app/data/model/similarMovie/similar_movie_response.dart';
import 'package:movie_app/data/model/topRatedMovies/top_rated_movies_response.dart';
import 'package:movie_app/data/model/trendingPersons/trending_persons_response.dart';
import 'package:movie_app/data/model/upcomingMovies/upcoming_movies_response.dart';
import 'package:movie_app/data/network/api_key.dart';

class MovieDataSource {
  final http.Client client;
  final String _baseUrl = 'https://api.themoviedb.org/3';

  MovieDataSource(this.client);

  Future<PopularMovieResponse> getPopularMovies() async {
    final response = await client.get('$_baseUrl/movie/popular?api_key=$API_KEY');
    final parsedResponse = PopularMovieResponse.fromJson(response.body);

    if(response.statusCode == 200) {
      return parsedResponse;
    }

    throw MovieErrorException;
  }

  Future<UpcomingMoviesResponse> getUpcomingMovies() async {
    final response = await client.get('$_baseUrl/movie/upcoming?api_key=$API_KEY');
    final parsedResponse = UpcomingMoviesResponse.fromJson(response.body);

    if(response.statusCode == 200) {
      return parsedResponse;
    }

    throw MovieErrorException;
  }

  Future<TopRatedMoviesResponse> getTopRatedMovies() async {
    final response = await client.get('$_baseUrl/movie/top_rated?api_key=$API_KEY');
    final parsedResponse = TopRatedMoviesResponse.fromJson(response.body);

    if(response.statusCode == 200) {
      return parsedResponse;
    }

    throw MovieErrorException;
  }

  Future<GenreResponse> getGenres() async {
    final response = await client.get('$_baseUrl/genre/movie/list?api_key=$API_KEY');
    final parsedResponse = GenreResponse.fromJson(response.body);

    if(response.statusCode == 200) {
      return parsedResponse;
    }

    throw MovieErrorException;
  }

  Future<TrendingPersonsResponse> getTrendingPersons() async {
    final response = await client.get('$_baseUrl/person/popular?api_key=$API_KEY');
    final parsedResponse = TrendingPersonsResponse.fromJson(response.body);

    if(response.statusCode == 200) {
      return parsedResponse;
    }

    throw MovieErrorException;
  }

  Future<DetailMovieResponse> getMovieDetails(int id) async {
    final response = await client.get('$_baseUrl/movie/$id?api_key=$API_KEY');
    final parsedResponse = DetailMovieResponse.fromJson(response.body);

    if(response.statusCode == 200) {
      return parsedResponse;
    }

    throw MovieErrorException;
  }

  Future<MovieCreditResponse> getMovieCredit(int id) async {
    final response = await client.get('$_baseUrl/movie/$id/credits?api_key=$API_KEY');
    final parsedResponse = MovieCreditResponse.fromJson(response.body);

    if(response.statusCode == 200) {
      return parsedResponse;
    }

    throw MovieErrorException;
  }

  Future<SimilarMovieResponse> getSimilarMovies(int id) async {
    try {
      final response = await client.get('$_baseUrl/movie/$id/similar?api_key=$API_KEY');
      final parsedResponse = SimilarMovieResponse.fromJson(response.body);
      print(parsedResponse);
      if(response.statusCode == 200) {
        return parsedResponse;
      }

    } catch(e) {
      print(e);
    }
    throw MovieErrorException;
  }
}

class MovieErrorException implements Exception {
  final message = 'Something went wrong';
}

class EmptyMovieException implements Exception {
  final message = 'No movies could be found';
}