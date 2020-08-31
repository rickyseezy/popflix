import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/videoItem/video_item.dart';

part 'similar_movies_state.g.dart';

abstract class SimilarMoviesState{}

class SimilarMoviesLoadingState extends SimilarMoviesState{}

abstract class SimilarMoviesLoadedState extends SimilarMoviesState implements Built<SimilarMoviesLoadedState, SimilarMoviesLoadedStateBuilder> {
  BuiltList<VideoItem> get videos;

  SimilarMoviesLoadedState._();
  factory SimilarMoviesLoadedState([void Function(SimilarMoviesLoadedStateBuilder) updates]) = _$SimilarMoviesLoadedState;
}

class SimilarMoviesErrorState extends SimilarMoviesState{}



