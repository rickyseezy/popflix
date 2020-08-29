// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SliderLoadedState extends SliderLoadedState {
  @override
  final BuiltList<VideoItem> videos;

  factory _$SliderLoadedState(
          [void Function(SliderLoadedStateBuilder) updates]) =>
      (new SliderLoadedStateBuilder()..update(updates)).build();

  _$SliderLoadedState._({this.videos}) : super._() {
    if (videos == null) {
      throw new BuiltValueNullFieldError('SliderLoadedState', 'videos');
    }
  }

  @override
  SliderLoadedState rebuild(void Function(SliderLoadedStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SliderLoadedStateBuilder toBuilder() =>
      new SliderLoadedStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SliderLoadedState && videos == other.videos;
  }

  @override
  int get hashCode {
    return $jf($jc(0, videos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SliderLoadedState')
          ..add('videos', videos))
        .toString();
  }
}

class SliderLoadedStateBuilder
    implements Builder<SliderLoadedState, SliderLoadedStateBuilder> {
  _$SliderLoadedState _$v;

  ListBuilder<VideoItem> _videos;
  ListBuilder<VideoItem> get videos =>
      _$this._videos ??= new ListBuilder<VideoItem>();
  set videos(ListBuilder<VideoItem> videos) => _$this._videos = videos;

  SliderLoadedStateBuilder();

  SliderLoadedStateBuilder get _$this {
    if (_$v != null) {
      _videos = _$v.videos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SliderLoadedState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SliderLoadedState;
  }

  @override
  void update(void Function(SliderLoadedStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SliderLoadedState build() {
    _$SliderLoadedState _$result;
    try {
      _$result = _$v ?? new _$SliderLoadedState._(videos: videos.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'videos';
        videos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SliderLoadedState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
