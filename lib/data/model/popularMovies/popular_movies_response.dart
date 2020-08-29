import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/serializer.dart';
import 'package:movie_app/data/model/videoItem/video_item.dart';

part 'popular_movies_response.g.dart';

abstract class PopularMovieResponse implements Built<PopularMovieResponse, PopularMovieResponseBuilder> {
  int get page;
  int get total_results;
  int get total_pages;
  BuiltList<VideoItem> get results;

  PopularMovieResponse._();
  factory PopularMovieResponse([void Function(PopularMovieResponseBuilder) updates]) = _$PopularMovieResponse;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(PopularMovieResponse.serializer, this);
  }

  static PopularMovieResponse fromJson(String json) {
    return serializers.deserializeWith(PopularMovieResponse.serializer, jsonDecode(json));
  }

  static Serializer<PopularMovieResponse> get serializer => _$popularMovieResponseSerializer;
}