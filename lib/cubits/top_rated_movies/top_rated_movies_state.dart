import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/video_item/video_item.dart';

part 'top_rated_movies_state.g.dart';


abstract class TopRatedMoviesState{}

class TopRatedMoviesLoadingState extends TopRatedMoviesState{}

class TopRatedMoviesErrorState extends TopRatedMoviesState{}

abstract class TopRatedMoviesLoadedState extends TopRatedMoviesState implements Built<TopRatedMoviesLoadedState, TopRatedMoviesLoadedStateBuilder> {
  BuiltList<VideoItem> get videos;

  TopRatedMoviesLoadedState._();
  factory TopRatedMoviesLoadedState([void Function(TopRatedMoviesLoadedStateBuilder) updates]) = _$TopRatedMoviesLoadedState;
}