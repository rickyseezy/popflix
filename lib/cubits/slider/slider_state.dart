import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/video_item/video_item.dart';

part 'slider_state.g.dart';


abstract class SliderState{}

class SliderLoadingState extends SliderState{}

abstract class SliderLoadedState extends SliderState implements Built<SliderLoadedState, SliderLoadedStateBuilder> {
  BuiltList<VideoItem> get videos;
  
  SliderLoadedState._();
  factory SliderLoadedState([void Function(SliderLoadedStateBuilder) updates]) = _$SliderLoadedState;
}

class SliderErrorState extends SliderState{
  final String message;

  SliderErrorState(this.message);
}
