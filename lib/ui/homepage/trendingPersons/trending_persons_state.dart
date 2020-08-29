import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:movie_app/data/model/person/person.dart';

part 'trending_persons_state.g.dart';

abstract class TrendingPersonsState{}

class TrendingPersonsLoadingState extends TrendingPersonsState{}

abstract class TrendingPersonsLoadedState extends TrendingPersonsState implements Built<TrendingPersonsLoadedState, TrendingPersonsLoadedStateBuilder> {
  BuiltList<Person> get results;

  TrendingPersonsLoadedState._();
  factory TrendingPersonsLoadedState([void Function(TrendingPersonsLoadedStateBuilder) updates]) = _$TrendingPersonsLoadedState;
}

class TrendingPersonsErrorState extends TrendingPersonsState{}
