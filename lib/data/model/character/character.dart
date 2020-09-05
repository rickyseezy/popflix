import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'character.g.dart';

abstract class Character implements Built<Character, CharacterBuilder> {
  String get name;
  @nullable
  String get profile_path;

  Character._();
  factory Character([void Function(CharacterBuilder) updates]) = _$Character;
}