import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/detail_movie/detail_movie_response.dart';
part 'detail_movie_state.g.dart';


abstract class DetailMovieState{}

class DetailMovieLoadingState extends DetailMovieState{}

class DetailMovieErrorState extends DetailMovieState{}

abstract class DetailMovieLoadedState extends DetailMovieState implements Built<DetailMovieLoadedState, DetailMovieLoadedStateBuilder> {
  DetailMovieResponse get result;

  DetailMovieLoadedState._();
  factory DetailMovieLoadedState([void Function(DetailMovieLoadedStateBuilder) updates]) = _$DetailMovieLoadedState;
}

class DetailMovieLoadTrailerState extends DetailMovieState{}