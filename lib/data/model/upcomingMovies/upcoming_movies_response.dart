import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/serializer.dart';
import 'package:movie_app/data/model/videoItem/video_item.dart';

part 'upcoming_movies_response.g.dart';

abstract class UpcomingMoviesResponse implements Built<UpcomingMoviesResponse, UpcomingMoviesResponseBuilder> {
  BuiltList<VideoItem> get results;

  UpcomingMoviesResponse._();
  factory UpcomingMoviesResponse([void Function(UpcomingMoviesResponseBuilder) updates]) = _$UpcomingMoviesResponse;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(UpcomingMoviesResponse.serializer, this);
  }

  static UpcomingMoviesResponse fromJson(String json) {
    return serializers.deserializeWith(UpcomingMoviesResponse.serializer, jsonDecode(json));
  }

  static Serializer<UpcomingMoviesResponse> get serializer => _$upcomingMoviesResponseSerializer;
}