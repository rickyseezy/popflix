// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GenreResponse> _$genreResponseSerializer =
    new _$GenreResponseSerializer();

class _$GenreResponseSerializer implements StructuredSerializer<GenreResponse> {
  @override
  final Iterable<Type> types = const [GenreResponse, _$GenreResponse];
  @override
  final String wireName = 'GenreResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, GenreResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenreItem)])),
    ];

    return result;
  }

  @override
  GenreResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenreResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenreItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GenreResponse extends GenreResponse {
  @override
  final BuiltList<GenreItem> genres;

  factory _$GenreResponse([void Function(GenreResponseBuilder) updates]) =>
      (new GenreResponseBuilder()..update(updates)).build();

  _$GenreResponse._({this.genres}) : super._() {
    if (genres == null) {
      throw new BuiltValueNullFieldError('GenreResponse', 'genres');
    }
  }

  @override
  GenreResponse rebuild(void Function(GenreResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreResponseBuilder toBuilder() => new GenreResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenreResponse && genres == other.genres;
  }

  @override
  int get hashCode {
    return $jf($jc(0, genres.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenreResponse')..add('genres', genres))
        .toString();
  }
}

class GenreResponseBuilder
    implements Builder<GenreResponse, GenreResponseBuilder> {
  _$GenreResponse _$v;

  ListBuilder<GenreItem> _genres;
  ListBuilder<GenreItem> get genres =>
      _$this._genres ??= new ListBuilder<GenreItem>();
  set genres(ListBuilder<GenreItem> genres) => _$this._genres = genres;

  GenreResponseBuilder();

  GenreResponseBuilder get _$this {
    if (_$v != null) {
      _genres = _$v.genres?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenreResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GenreResponse;
  }

  @override
  void update(void Function(GenreResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GenreResponse build() {
    _$GenreResponse _$result;
    try {
      _$result = _$v ?? new _$GenreResponse._(genres: genres.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenreResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
