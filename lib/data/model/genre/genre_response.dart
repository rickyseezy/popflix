import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/serializer.dart';

part 'genre_response.g.dart';

abstract class GenreResponse implements Built<GenreResponse, GenreResponseBuilder> {
  BuiltList<GenreItem> get genres;

  GenreResponse._();
  factory GenreResponse([void Function(GenreResponseBuilder) updates]) = _$GenreResponse;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(GenreResponse.serializer, this);
  }

  static GenreResponse fromJson(String json) {
    return serializers.deserializeWith(GenreResponse.serializer, jsonDecode(json));
  }

  static Serializer<GenreResponse> get serializer => _$genreResponseSerializer;
}

abstract class GenreItem implements Built<GenreItem, GenreItemBuilder> {
  int get id;
  String get name;

  GenreItem._();
  factory GenreItem([void Function(GenreItemBuilder) updates]) = _$GenreItem;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(GenreItem.serializer, this);
  }

  static GenreItem fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(GenreItem.serializer, json);
  }

  static Serializer<GenreItem> get serializer => _$genreItemSerializer;
}