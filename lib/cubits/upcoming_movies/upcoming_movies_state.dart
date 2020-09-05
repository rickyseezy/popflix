import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/video_item/video_item.dart';
part 'upcoming_movies_state.g.dart';


abstract class UpcomingMoviesState{}

class UpcomingMoviesLoadingState extends UpcomingMoviesState{}

class UpcomingMoviesErrorState extends UpcomingMoviesState{}

class UpcomingMoviesChangeTabState extends UpcomingMoviesState{
  final currentIndex;

  UpcomingMoviesChangeTabState(this.currentIndex);
}

abstract class UpcomingMoviesLoadedState extends UpcomingMoviesState implements Built<UpcomingMoviesLoadedState, UpcomingMoviesLoadedStateBuilder> {
  BuiltList<VideoItem> get videos;

  UpcomingMoviesLoadedState._();
  factory UpcomingMoviesLoadedState([void Function(UpcomingMoviesLoadedStateBuilder) updates]) = _$UpcomingMoviesLoadedState;
}