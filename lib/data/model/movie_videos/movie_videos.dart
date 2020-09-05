import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/serializer.dart';

part 'movie_videos.g.dart';

abstract class MovieVideoItem implements Built<MovieVideoItem, MovieVideoItemBuilder> {
  String get id;
  String get site;
  String get key;

  MovieVideoItem._();
  factory MovieVideoItem([void Function(MovieVideoItemBuilder) updates]) = _$MovieVideoItem;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(MovieVideoItem.serializer, this);
  }

  static MovieVideoItem fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(MovieVideoItem.serializer, json);
  }

  static Serializer<MovieVideoItem> get serializer => _$movieVideoItemSerializer;
}

abstract class MovieVideosResponse implements Built<MovieVideosResponse, MovieVideosResponseBuilder> {
  BuiltList<MovieVideoItem> get results;

  MovieVideosResponse._();
  factory MovieVideosResponse([void Function(MovieVideosResponseBuilder) updates]) = _$MovieVideosResponse;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(MovieVideosResponse.serializer, this);
  }

  static MovieVideosResponse fromJson(String json) {
    return serializers.deserializeWith(MovieVideosResponse.serializer, jsonDecode(json));
  }

  static Serializer<MovieVideosResponse> get serializer => _$movieVideosResponseSerializer;
}