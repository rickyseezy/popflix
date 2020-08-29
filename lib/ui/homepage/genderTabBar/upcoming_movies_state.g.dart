// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_movies_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpcomingMoviesLoadedState extends UpcomingMoviesLoadedState {
  @override
  final BuiltList<VideoItem> videos;

  factory _$UpcomingMoviesLoadedState(
          [void Function(UpcomingMoviesLoadedStateBuilder) updates]) =>
      (new UpcomingMoviesLoadedStateBuilder()..update(updates)).build();

  _$UpcomingMoviesLoadedState._({this.videos}) : super._() {
    if (videos == null) {
      throw new BuiltValueNullFieldError('UpcomingMoviesLoadedState', 'videos');
    }
  }

  @override
  UpcomingMoviesLoadedState rebuild(
          void Function(UpcomingMoviesLoadedStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpcomingMoviesLoadedStateBuilder toBuilder() =>
      new UpcomingMoviesLoadedStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpcomingMoviesLoadedState && videos == other.videos;
  }

  @override
  int get hashCode {
    return $jf($jc(0, videos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpcomingMoviesLoadedState')
          ..add('videos', videos))
        .toString();
  }
}

class UpcomingMoviesLoadedStateBuilder
    implements
        Builder<UpcomingMoviesLoadedState, UpcomingMoviesLoadedStateBuilder> {
  _$UpcomingMoviesLoadedState _$v;

  ListBuilder<VideoItem> _videos;
  ListBuilder<VideoItem> get videos =>
      _$this._videos ??= new ListBuilder<VideoItem>();
  set videos(ListBuilder<VideoItem> videos) => _$this._videos = videos;

  UpcomingMoviesLoadedStateBuilder();

  UpcomingMoviesLoadedStateBuilder get _$this {
    if (_$v != null) {
      _videos = _$v.videos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpcomingMoviesLoadedState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpcomingMoviesLoadedState;
  }

  @override
  void update(void Function(UpcomingMoviesLoadedStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpcomingMoviesLoadedState build() {
    _$UpcomingMoviesLoadedState _$result;
    try {
      _$result =
          _$v ?? new _$UpcomingMoviesLoadedState._(videos: videos.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'videos';
        videos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpcomingMoviesLoadedState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
