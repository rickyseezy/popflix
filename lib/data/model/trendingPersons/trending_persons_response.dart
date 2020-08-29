import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/person/person.dart';
import 'package:movie_app/data/model/serializer.dart';

part 'trending_persons_response.g.dart';

abstract class TrendingPersonsResponse implements Built<TrendingPersonsResponse, TrendingPersonsResponseBuilder> {
  BuiltList<Person> get results;

  TrendingPersonsResponse._();
  factory TrendingPersonsResponse([void Function(TrendingPersonsResponseBuilder) updates]) = _$TrendingPersonsResponse;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(TrendingPersonsResponse.serializer, this);
  }

  static TrendingPersonsResponse fromJson(String json) {
    return serializers.deserializeWith(TrendingPersonsResponse.serializer, jsonDecode(json));
  }

  static Serializer<TrendingPersonsResponse> get serializer => _$trendingPersonsResponseSerializer;
}