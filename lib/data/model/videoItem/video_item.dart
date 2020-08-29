import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_app/data/model/serializer.dart';

part 'video_item.g.dart';

abstract class VideoItem implements Built<VideoItem, VideoItemBuilder> {
  double get popularity;
  int get vote_count;
  bool get video;
  String get poster_path;
  int get id;
  bool get adult;
  String get backdrop_path;
  String get original_title;
  BuiltList<int> get genre_ids;
  String get title;
  double get vote_average;
  String get overview;
  String get release_date;

  VideoItem._();
  factory VideoItem([void Function(VideoItemBuilder) updates]) = _$VideoItem;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(VideoItem.serializer, this);
  }

  static VideoItem fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(VideoItem.serializer, json);
  }

  static Serializer<VideoItem> get serializer => _$videoItemSerializer;
}