import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:movie_app/data/model/models.dart';
import 'package:built_collection/built_collection.dart';

part 'serializer.g.dart';

@SerializersFor([
  PopularMovieResponse,
  VideoItem,
  GenreResponse,
  GenreItem,
  UpcomingMoviesResponse,
  TrendingPersonsResponse,
  Person,
  TopRatedMoviesResponse,
  DetailMovieResponse,
  MovieCreditResponse,
  CastItem,
  SimilarMovieResponse,
  MovieVideosResponse,
  MovieVideoItem
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();