import 'package:built_value/built_value.dart';

part 'youtube_player_state.g.dart';


abstract class YoutubePlayerState {}

class YoutubePlayerInitialState extends YoutubePlayerState {}

abstract class YoutubePlayerShowTrailerState extends YoutubePlayerState implements Built<YoutubePlayerShowTrailerState, YoutubePlayerShowTrailerStateBuilder> {
  String get youtubeVideoId;

  YoutubePlayerShowTrailerState._();
  factory YoutubePlayerShowTrailerState([void Function(YoutubePlayerShowTrailerStateBuilder) updates]) = _$YoutubePlayerShowTrailerState;
}


class YoutubePlayerShowBannerState extends YoutubePlayerState {}

class YoutubePlayerErrorState extends YoutubePlayerState {}

