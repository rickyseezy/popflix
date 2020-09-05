import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/serializer.dart';

part 'person.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {
  double get popularity;
  String get known_for_department;
  int get gender;
  int get id;
  String get profile_path;
  bool get adult;
  String get name;

  Person._();
  factory Person([void Function(PersonBuilder) updates]) = _$Person;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Person.serializer, this);
  }

  static Person fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Person.serializer, json);
  }

  static Serializer<Person> get serializer => _$personSerializer;
}