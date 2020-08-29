// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_persons_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrendingPersonsLoadedState extends TrendingPersonsLoadedState {
  @override
  final BuiltList<Person> results;

  factory _$TrendingPersonsLoadedState(
          [void Function(TrendingPersonsLoadedStateBuilder) updates]) =>
      (new TrendingPersonsLoadedStateBuilder()..update(updates)).build();

  _$TrendingPersonsLoadedState._({this.results}) : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError(
          'TrendingPersonsLoadedState', 'results');
    }
  }

  @override
  TrendingPersonsLoadedState rebuild(
          void Function(TrendingPersonsLoadedStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrendingPersonsLoadedStateBuilder toBuilder() =>
      new TrendingPersonsLoadedStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendingPersonsLoadedState && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrendingPersonsLoadedState')
          ..add('results', results))
        .toString();
  }
}

class TrendingPersonsLoadedStateBuilder
    implements
        Builder<TrendingPersonsLoadedState, TrendingPersonsLoadedStateBuilder> {
  _$TrendingPersonsLoadedState _$v;

  ListBuilder<Person> _results;
  ListBuilder<Person> get results =>
      _$this._results ??= new ListBuilder<Person>();
  set results(ListBuilder<Person> results) => _$this._results = results;

  TrendingPersonsLoadedStateBuilder();

  TrendingPersonsLoadedStateBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendingPersonsLoadedState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrendingPersonsLoadedState;
  }

  @override
  void update(void Function(TrendingPersonsLoadedStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrendingPersonsLoadedState build() {
    _$TrendingPersonsLoadedState _$result;
    try {
      _$result =
          _$v ?? new _$TrendingPersonsLoadedState._(results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TrendingPersonsLoadedState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
