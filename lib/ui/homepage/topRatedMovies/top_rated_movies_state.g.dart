// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated_movies_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TopRatedMoviesLoadedState extends TopRatedMoviesLoadedState {
  @override
  final BuiltList<VideoItem> videos;

  factory _$TopRatedMoviesLoadedState(
          [void Function(TopRatedMoviesLoadedStateBuilder) updates]) =>
      (new TopRatedMoviesLoadedStateBuilder()..update(updates)).build();

  _$TopRatedMoviesLoadedState._({this.videos}) : super._() {
    if (videos == null) {
      throw new BuiltValueNullFieldError('TopRatedMoviesLoadedState', 'videos');
    }
  }

  @override
  TopRatedMoviesLoadedState rebuild(
          void Function(TopRatedMoviesLoadedStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopRatedMoviesLoadedStateBuilder toBuilder() =>
      new TopRatedMoviesLoadedStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopRatedMoviesLoadedState && videos == other.videos;
  }

  @override
  int get hashCode {
    return $jf($jc(0, videos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TopRatedMoviesLoadedState')
          ..add('videos', videos))
        .toString();
  }
}

class TopRatedMoviesLoadedStateBuilder
    implements
        Builder<TopRatedMoviesLoadedState, TopRatedMoviesLoadedStateBuilder> {
  _$TopRatedMoviesLoadedState _$v;

  ListBuilder<VideoItem> _videos;
  ListBuilder<VideoItem> get videos =>
      _$this._videos ??= new ListBuilder<VideoItem>();
  set videos(ListBuilder<VideoItem> videos) => _$this._videos = videos;

  TopRatedMoviesLoadedStateBuilder();

  TopRatedMoviesLoadedStateBuilder get _$this {
    if (_$v != null) {
      _videos = _$v.videos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopRatedMoviesLoadedState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TopRatedMoviesLoadedState;
  }

  @override
  void update(void Function(TopRatedMoviesLoadedStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TopRatedMoviesLoadedState build() {
    _$TopRatedMoviesLoadedState _$result;
    try {
      _$result =
          _$v ?? new _$TopRatedMoviesLoadedState._(videos: videos.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'videos';
        videos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TopRatedMoviesLoadedState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
