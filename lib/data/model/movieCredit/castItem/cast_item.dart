import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/serializer.dart';

part 'cast_item.g.dart';

abstract class CastItem implements Built<CastItem, CastItemBuilder> {
  int get cast_id;
  String get character;
  String get credit_id;
  int get gender;
  int get id;
  String get name;
  int get order;
  @nullable
  String get profile_path;

  CastItem._();
  factory CastItem([void Function(CastItemBuilder) updates]) = _$CastItem;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(CastItem.serializer, this);
  }

  static CastItem fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CastItem.serializer, json);
  }

  static Serializer<CastItem> get serializer => _$castItemSerializer;
}