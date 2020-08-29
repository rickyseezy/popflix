import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/serializer.dart';
import 'package:movie_app/data/model/videoItem/video_item.dart';

part 'top_rated_movies_response.g.dart';

abstract class TopRatedMoviesResponse implements Built<TopRatedMoviesResponse, TopRatedMoviesResponseBuilder> {
  BuiltList<VideoItem> get results;

  TopRatedMoviesResponse._();
  factory TopRatedMoviesResponse([void Function(TopRatedMoviesResponseBuilder) updates]) = _$TopRatedMoviesResponse;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(TopRatedMoviesResponse.serializer, this);
  }

  static TopRatedMoviesResponse fromJson(String json) {
    return serializers.deserializeWith(TopRatedMoviesResponse.serializer, jsonDecode(json));
  }

  static Serializer<TopRatedMoviesResponse> get serializer => _$topRatedMoviesResponseSerializer;
}