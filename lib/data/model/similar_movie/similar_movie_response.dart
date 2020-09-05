import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/serializer.dart';
import 'package:movie_app/data/model/video_item/video_item.dart';
part 'similar_movie_response.g.dart';

abstract class SimilarMovieResponse implements Built<SimilarMovieResponse, SimilarMovieResponseBuilder> {
  BuiltList<VideoItem> get results;

  SimilarMovieResponse._();
  factory SimilarMovieResponse([void Function(SimilarMovieResponseBuilder) updates]) = _$SimilarMovieResponse;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(SimilarMovieResponse.serializer, this);
  }

  static SimilarMovieResponse fromJson(String json) {
    return serializers.deserializeWith(SimilarMovieResponse.serializer, jsonDecode(json));
  }

  static Serializer<SimilarMovieResponse> get serializer => _$similarMovieResponseSerializer;
}
