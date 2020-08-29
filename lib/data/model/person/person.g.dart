// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Person> _$personSerializer = new _$PersonSerializer();

class _$PersonSerializer implements StructuredSerializer<Person> {
  @override
  final Iterable<Type> types = const [Person, _$Person];
  @override
  final String wireName = 'Person';

  @override
  Iterable<Object> serialize(Serializers serializers, Person object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
      'known_for_department',
      serializers.serialize(object.known_for_department,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'profile_path',
      serializers.serialize(object.profile_path,
          specifiedType: const FullType(String)),
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Person deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PersonBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'known_for_department':
          result.known_for_department = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'profile_path':
          result.profile_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Person extends Person {
  @override
  final double popularity;
  @override
  final String known_for_department;
  @override
  final int gender;
  @override
  final int id;
  @override
  final String profile_path;
  @override
  final bool adult;
  @override
  final String name;

  factory _$Person([void Function(PersonBuilder) updates]) =>
      (new PersonBuilder()..update(updates)).build();

  _$Person._(
      {this.popularity,
      this.known_for_department,
      this.gender,
      this.id,
      this.profile_path,
      this.adult,
      this.name})
      : super._() {
    if (popularity == null) {
      throw new BuiltValueNullFieldError('Person', 'popularity');
    }
    if (known_for_department == null) {
      throw new BuiltValueNullFieldError('Person', 'known_for_department');
    }
    if (gender == null) {
      throw new BuiltValueNullFieldError('Person', 'gender');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Person', 'id');
    }
    if (profile_path == null) {
      throw new BuiltValueNullFieldError('Person', 'profile_path');
    }
    if (adult == null) {
      throw new BuiltValueNullFieldError('Person', 'adult');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Person', 'name');
    }
  }

  @override
  Person rebuild(void Function(PersonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonBuilder toBuilder() => new PersonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Person &&
        popularity == other.popularity &&
        known_for_department == other.known_for_department &&
        gender == other.gender &&
        id == other.id &&
        profile_path == other.profile_path &&
        adult == other.adult &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, popularity.hashCode),
                            known_for_department.hashCode),
                        gender.hashCode),
                    id.hashCode),
                profile_path.hashCode),
            adult.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Person')
          ..add('popularity', popularity)
          ..add('known_for_department', known_for_department)
          ..add('gender', gender)
          ..add('id', id)
          ..add('profile_path', profile_path)
          ..add('adult', adult)
          ..add('name', name))
        .toString();
  }
}

class PersonBuilder implements Builder<Person, PersonBuilder> {
  _$Person _$v;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  String _known_for_department;
  String get known_for_department => _$this._known_for_department;
  set known_for_department(String known_for_department) =>
      _$this._known_for_department = known_for_department;

  int _gender;
  int get gender => _$this._gender;
  set gender(int gender) => _$this._gender = gender;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _profile_path;
  String get profile_path => _$this._profile_path;
  set profile_path(String profile_path) => _$this._profile_path = profile_path;

  bool _adult;
  bool get adult => _$this._adult;
  set adult(bool adult) => _$this._adult = adult;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  PersonBuilder();

  PersonBuilder get _$this {
    if (_$v != null) {
      _popularity = _$v.popularity;
      _known_for_department = _$v.known_for_department;
      _gender = _$v.gender;
      _id = _$v.id;
      _profile_path = _$v.profile_path;
      _adult = _$v.adult;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Person other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Person;
  }

  @override
  void update(void Function(PersonBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Person build() {
    final _$result = _$v ??
        new _$Person._(
            popularity: popularity,
            known_for_department: known_for_department,
            gender: gender,
            id: id,
            profile_path: profile_path,
            adult: adult,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
