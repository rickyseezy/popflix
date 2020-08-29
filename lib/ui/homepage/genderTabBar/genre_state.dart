import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:movie_app/data/model/genre/genre_item.dart';
import 'package:movie_app/data/model/genre/genre_response.dart';

part 'genre_state.g.dart';

abstract class GenreState{}

class GenreLoadingState extends GenreState{}

abstract class GenreLoadedState extends GenreState implements Built<GenreLoadedState, GenreLoadedStateBuilder> {
  BuiltList<GenreItem> get genres;

  GenreLoadedState._();
  factory GenreLoadedState([void Function(GenreLoadedStateBuilder) updates]) = _$GenreLoadedState;
}

class GenreErrorState extends GenreState{}
