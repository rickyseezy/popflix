// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movies_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PopularMovieResponse> _$popularMovieResponseSerializer =
    new _$PopularMovieResponseSerializer();

class _$PopularMovieResponseSerializer
    implements StructuredSerializer<PopularMovieResponse> {
  @override
  final Iterable<Type> types = const [
    PopularMovieResponse,
    _$PopularMovieResponse
  ];
  @override
  final String wireName = 'PopularMovieResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PopularMovieResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'total_results',
      serializers.serialize(object.total_results,
          specifiedType: const FullType(int)),
      'total_pages',
      serializers.serialize(object.total_pages,
          specifiedType: const FullType(int)),
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(VideoItem)])),
    ];

    return result;
  }

  @override
  PopularMovieResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PopularMovieResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_results':
          result.total_results = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_pages':
          result.total_pages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
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

class _$PopularMovieResponse extends PopularMovieResponse {
  @override
  final int page;
  @override
  final int total_results;
  @override
  final int total_pages;
  @override
  final BuiltList<VideoItem> results;

  factory _$PopularMovieResponse(
          [void Function(PopularMovieResponseBuilder) updates]) =>
      (new PopularMovieResponseBuilder()..update(updates)).build();

  _$PopularMovieResponse._(
      {this.page, this.total_results, this.total_pages, this.results})
      : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('PopularMovieResponse', 'page');
    }
    if (total_results == null) {
      throw new BuiltValueNullFieldError(
          'PopularMovieResponse', 'total_results');
    }
    if (total_pages == null) {
      throw new BuiltValueNullFieldError('PopularMovieResponse', 'total_pages');
    }
    if (results == null) {
      throw new BuiltValueNullFieldError('PopularMovieResponse', 'results');
    }
  }

  @override
  PopularMovieResponse rebuild(
          void Function(PopularMovieResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PopularMovieResponseBuilder toBuilder() =>
      new PopularMovieResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PopularMovieResponse &&
        page == other.page &&
        total_results == other.total_results &&
        total_pages == other.total_pages &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, page.hashCode), total_results.hashCode),
            total_pages.hashCode),
        results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PopularMovieResponse')
          ..add('page', page)
          ..add('total_results', total_results)
          ..add('total_pages', total_pages)
          ..add('results', results))
        .toString();
  }
}

class PopularMovieResponseBuilder
    implements Builder<PopularMovieResponse, PopularMovieResponseBuilder> {
  _$PopularMovieResponse _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _total_results;
  int get total_results => _$this._total_results;
  set total_results(int total_results) => _$this._total_results = total_results;

  int _total_pages;
  int get total_pages => _$this._total_pages;
  set total_pages(int total_pages) => _$this._total_pages = total_pages;

  ListBuilder<VideoItem> _results;
  ListBuilder<VideoItem> get results =>
      _$this._results ??= new ListBuilder<VideoItem>();
  set results(ListBuilder<VideoItem> results) => _$this._results = results;

  PopularMovieResponseBuilder();

  PopularMovieResponseBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _total_results = _$v.total_results;
      _total_pages = _$v.total_pages;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PopularMovieResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PopularMovieResponse;
  }

  @override
  void update(void Function(PopularMovieResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PopularMovieResponse build() {
    _$PopularMovieResponse _$result;
    try {
      _$result = _$v ??
          new _$PopularMovieResponse._(
              page: page,
              total_results: total_results,
              total_pages: total_pages,
              results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PopularMovieResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
