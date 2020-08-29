// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GenreLoadedState extends GenreLoadedState {
  @override
  final BuiltList<GenreItem> genres;

  factory _$GenreLoadedState(
          [void Function(GenreLoadedStateBuilder) updates]) =>
      (new GenreLoadedStateBuilder()..update(updates)).build();

  _$GenreLoadedState._({this.genres}) : super._() {
    if (genres == null) {
      throw new BuiltValueNullFieldError('GenreLoadedState', 'genres');
    }
  }

  @override
  GenreLoadedState rebuild(void Function(GenreLoadedStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreLoadedStateBuilder toBuilder() =>
      new GenreLoadedStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenreLoadedState && genres == other.genres;
  }

  @override
  int get hashCode {
    return $jf($jc(0, genres.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenreLoadedState')
          ..add('genres', genres))
        .toString();
  }
}

class GenreLoadedStateBuilder
    implements Builder<GenreLoadedState, GenreLoadedStateBuilder> {
  _$GenreLoadedState _$v;

  ListBuilder<GenreItem> _genres;
  ListBuilder<GenreItem> get genres =>
      _$this._genres ??= new ListBuilder<GenreItem>();
  set genres(ListBuilder<GenreItem> genres) => _$this._genres = genres;

  GenreLoadedStateBuilder();

  GenreLoadedStateBuilder get _$this {
    if (_$v != null) {
      _genres = _$v.genres?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenreLoadedState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GenreLoadedState;
  }

  @override
  void update(void Function(GenreLoadedStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GenreLoadedState build() {
    _$GenreLoadedState _$result;
    try {
      _$result = _$v ?? new _$GenreLoadedState._(genres: genres.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenreLoadedState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
