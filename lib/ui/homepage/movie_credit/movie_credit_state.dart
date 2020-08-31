import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:movie_app/data/model/movieCredit/castItem/cast_item.dart';

part 'movie_credit_state.g.dart';

abstract class MovieCreditState{}

class MovieCreditLoadingState extends MovieCreditState{}

abstract class MovieCreditLoadedState extends MovieCreditState implements Built<MovieCreditLoadedState, MovieCreditLoadedStateBuilder> {
  BuiltList<CastItem> get cast;

  MovieCreditLoadedState._();
  factory MovieCreditLoadedState([void Function(MovieCreditLoadedStateBuilder) updates]) = _$MovieCreditLoadedState;
}

class MovieCreditErrorState extends MovieCreditState{}