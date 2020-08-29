// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_movies_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UpcomingMoviesResponse> _$upcomingMoviesResponseSerializer =
    new _$UpcomingMoviesResponseSerializer();

class _$UpcomingMoviesResponseSerializer
    implements StructuredSerializer<UpcomingMoviesResponse> {
  @override
  final Iterable<Type> types = const [
    UpcomingMoviesResponse,
    _$UpcomingMoviesResponse
  ];
  @override
  final String wireName = 'UpcomingMoviesResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UpcomingMoviesResponse object,
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
  UpcomingMoviesResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpcomingMoviesResponseBuilder();

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

class _$UpcomingMoviesResponse extends UpcomingMoviesResponse {
  @override
  final BuiltList<VideoItem> results;

  factory _$UpcomingMoviesResponse(
          [void Function(UpcomingMoviesResponseBuilder) updates]) =>
      (new UpcomingMoviesResponseBuilder()..update(updates)).build();

  _$UpcomingMoviesResponse._({this.results}) : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('UpcomingMoviesResponse', 'results');
    }
  }

  @override
  UpcomingMoviesResponse rebuild(
          void Function(UpcomingMoviesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpcomingMoviesResponseBuilder toBuilder() =>
      new UpcomingMoviesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpcomingMoviesResponse && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpcomingMoviesResponse')
          ..add('results', results))
        .toString();
  }
}

class UpcomingMoviesResponseBuilder
    implements Builder<UpcomingMoviesResponse, UpcomingMoviesResponseBuilder> {
  _$UpcomingMoviesResponse _$v;

  ListBuilder<VideoItem> _results;
  ListBuilder<VideoItem> get results =>
      _$this._results ??= new ListBuilder<VideoItem>();
  set results(ListBuilder<VideoItem> results) => _$this._results = results;

  UpcomingMoviesResponseBuilder();

  UpcomingMoviesResponseBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpcomingMoviesResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpcomingMoviesResponse;
  }

  @override
  void update(void Function(UpcomingMoviesResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpcomingMoviesResponse build() {
    _$UpcomingMoviesResponse _$result;
    try {
      _$result =
          _$v ?? new _$UpcomingMoviesResponse._(results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpcomingMoviesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
