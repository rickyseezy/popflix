// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GenreItem> _$genreItemSerializer = new _$GenreItemSerializer();

class _$GenreItemSerializer implements StructuredSerializer<GenreItem> {
  @override
  final Iterable<Type> types = const [GenreItem, _$GenreItem];
  @override
  final String wireName = 'GenreItem';

  @override
  Iterable<Object> serialize(Serializers serializers, GenreItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GenreItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenreItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$GenreItem extends GenreItem {
  @override
  final int id;
  @override
  final String name;

  factory _$GenreItem([void Function(GenreItemBuilder) updates]) =>
      (new GenreItemBuilder()..update(updates)).build();

  _$GenreItem._({this.id, this.name}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('GenreItem', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('GenreItem', 'name');
    }
  }

  @override
  GenreItem rebuild(void Function(GenreItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreItemBuilder toBuilder() => new GenreItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenreItem && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenreItem')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GenreItemBuilder implements Builder<GenreItem, GenreItemBuilder> {
  _$GenreItem _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  GenreItemBuilder();

  GenreItemBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenreItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GenreItem;
  }

  @override
  void update(void Function(GenreItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GenreItem build() {
    final _$result = _$v ?? new _$GenreItem._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
