// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_persons_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TrendingPersonsResponse> _$trendingPersonsResponseSerializer =
    new _$TrendingPersonsResponseSerializer();

class _$TrendingPersonsResponseSerializer
    implements StructuredSerializer<TrendingPersonsResponse> {
  @override
  final Iterable<Type> types = const [
    TrendingPersonsResponse,
    _$TrendingPersonsResponse
  ];
  @override
  final String wireName = 'TrendingPersonsResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TrendingPersonsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Person)])),
    ];

    return result;
  }

  @override
  TrendingPersonsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrendingPersonsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Person)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TrendingPersonsResponse extends TrendingPersonsResponse {
  @override
  final BuiltList<Person> results;

  factory _$TrendingPersonsResponse(
          [void Function(TrendingPersonsResponseBuilder) updates]) =>
      (new TrendingPersonsResponseBuilder()..update(updates)).build();

  _$TrendingPersonsResponse._({this.results}) : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('TrendingPersonsResponse', 'results');
    }
  }

  @override
  TrendingPersonsResponse rebuild(
          void Function(TrendingPersonsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrendingPersonsResponseBuilder toBuilder() =>
      new TrendingPersonsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendingPersonsResponse && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrendingPersonsResponse')
          ..add('results', results))
        .toString();
  }
}

class TrendingPersonsResponseBuilder
    implements
        Builder<TrendingPersonsResponse, TrendingPersonsResponseBuilder> {
  _$TrendingPersonsResponse _$v;

  ListBuilder<Person> _results;
  ListBuilder<Person> get results =>
      _$this._results ??= new ListBuilder<Person>();
  set results(ListBuilder<Person> results) => _$this._results = results;

  TrendingPersonsResponseBuilder();

  TrendingPersonsResponseBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendingPersonsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrendingPersonsResponse;
  }

  @override
  void update(void Function(TrendingPersonsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrendingPersonsResponse build() {
    _$TrendingPersonsResponse _$result;
    try {
      _$result =
          _$v ?? new _$TrendingPersonsResponse._(results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TrendingPersonsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
