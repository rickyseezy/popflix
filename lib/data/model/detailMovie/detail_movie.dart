import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/genre/genre_item.dart';
import 'package:movie_app/data/model/serializer.dart';

part 'detail_movie.g.dart';

abstract class DetailMovieResponse implements Built<DetailMovieResponse, DetailMovieResponseBuilder> {
  bool get adult;
  String get backdrop_path;
  int get budget;
  BuiltList<GenreItem> get genres;
  String get homepage;
  int get id;
  String get original_title;
  String get overview;
  String get poster_path;
  String get release_date;
  int get revenue;
  String get title;
  double get vote_average;
  int get vote_count;
  int get runtime;

  DetailMovieResponse._();
  factory DetailMovieResponse([void Function(DetailMovieResponseBuilder) updates]) = _$DetailMovieResponse;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(DetailMovieResponse.serializer, this);
  }

  static DetailMovieResponse fromJson(String json) {
    return serializers.deserializeWith(DetailMovieResponse.serializer, jsonDecode(json));
  }

  static Serializer<DetailMovieResponse> get serializer => _$detailMovieResponseSerializer;
}