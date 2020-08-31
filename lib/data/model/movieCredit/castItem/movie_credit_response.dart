import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/movieCredit/castItem/cast_item.dart';
import 'package:movie_app/data/model/serializer.dart';

part 'movie_credit_response.g.dart';

abstract class MovieCreditResponse implements Built<MovieCreditResponse, MovieCreditResponseBuilder> {
  BuiltList<CastItem> get cast;

  MovieCreditResponse._();
  factory MovieCreditResponse([void Function(MovieCreditResponseBuilder) updates]) = _$MovieCreditResponse;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(MovieCreditResponse.serializer, this);
  }

  static MovieCreditResponse fromJson(String json) {
    return serializers.deserializeWith(MovieCreditResponse.serializer, jsonDecode(json));
  }

  static Serializer<MovieCreditResponse> get serializer => _$movieCreditResponseSerializer;
}