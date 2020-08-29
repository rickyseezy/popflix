// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated_movies_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TopRatedMoviesResponse> _$topRatedMoviesResponseSerializer =
    new _$TopRatedMoviesResponseSerializer();

class _$TopRatedMoviesResponseSerializer
    implements StructuredSerializer<TopRatedMoviesResponse> {
  @override
  final Iterable<Type> types = const [
    TopRatedMoviesResponse,
    _$TopRatedMoviesResponse
  ];
  @override
  final String wireName = 'TopRatedMoviesResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TopRatedMoviesResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(VideoItem)])),
    ];

    return result;
  }

  @override
  TopRatedMoviesResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopRatedMoviesResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(VideoItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TopRatedMoviesResponse extends TopRatedMoviesResponse {
  @override
  final BuiltList<VideoItem> results;

  factory _$TopRatedMoviesResponse(
          [void Function(TopRatedMoviesResponseBuilder) updates]) =>
      (new TopRatedMoviesResponseBuilder()..update(updates)).build();

  _$TopRatedMoviesResponse._({this.results}) : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('TopRatedMoviesResponse', 'results');
    }
  }

  @override
  TopRatedMoviesResponse rebuild(
          void Function(TopRatedMoviesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopRatedMoviesResponseBuilder toBuilder() =>
      new TopRatedMoviesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopRatedMoviesResponse && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TopRatedMoviesResponse')
          ..add('results', results))
        .toString();
  }
}

class TopRatedMoviesResponseBuilder
    implements Builder<TopRatedMoviesResponse, TopRatedMoviesResponseBuilder> {
  _$TopRatedMoviesResponse _$v;

  ListBuilder<VideoItem> _results;
  ListBuilder<VideoItem> get results =>
      _$this._results ??= new ListBuilder<VideoItem>();
  set results(ListBuilder<VideoItem> results) => _$this._results = results;

  TopRatedMoviesResponseBuilder();

  TopRatedMoviesResponseBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopRatedMoviesResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TopRatedMoviesResponse;
  }

  @override
  void update(void Function(TopRatedMoviesResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TopRatedMoviesResponse build() {
    _$TopRatedMoviesResponse _$result;
    try {
      _$result =
          _$v ?? new _$TopRatedMoviesResponse._(results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TopRatedMoviesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
