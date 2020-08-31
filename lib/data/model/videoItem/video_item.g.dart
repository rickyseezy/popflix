// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideoItem> _$videoItemSerializer = new _$VideoItemSerializer();

class _$VideoItemSerializer implements StructuredSerializer<VideoItem> {
  @override
  final Iterable<Type> types = const [VideoItem, _$VideoItem];
  @override
  final String wireName = 'VideoItem';

  @override
  Iterable<Object> serialize(Serializers serializers, VideoItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
      'vote_count',
      serializers.serialize(object.vote_count,
          specifiedType: const FullType(int)),
      'video',
      serializers.serialize(object.video, specifiedType: const FullType(bool)),
      'poster_path',
      serializers.serialize(object.poster_path,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'original_title',
      serializers.serialize(object.original_title,
          specifiedType: const FullType(String)),
      'genre_ids',
      serializers.serialize(object.genre_ids,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'vote_average',
      serializers.serialize(object.vote_average,
          specifiedType: const FullType(double)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'release_date',
      serializers.serialize(object.release_date,
          specifiedType: const FullType(String)),
    ];
    if (object.backdrop_path != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdrop_path,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  VideoItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vote_count':
          result.vote_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'poster_path':
          result.poster_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'backdrop_path':
          result.backdrop_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_title':
          result.original_title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'genre_ids':
          result.genre_ids.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote_average':
          result.vote_average = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_date':
          result.release_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$VideoItem extends VideoItem {
  @override
  final double popularity;
  @override
  final int vote_count;
  @override
  final bool video;
  @override
  final String poster_path;
  @override
  final int id;
  @override
  final bool adult;
  @override
  final String backdrop_path;
  @override
  final String original_title;
  @override
  final BuiltList<int> genre_ids;
  @override
  final String title;
  @override
  final double vote_average;
  @override
  final String overview;
  @override
  final String release_date;

  factory _$VideoItem([void Function(VideoItemBuilder) updates]) =>
      (new VideoItemBuilder()..update(updates)).build();

  _$VideoItem._(
      {this.popularity,
      this.vote_count,
      this.video,
      this.poster_path,
      this.id,
      this.adult,
      this.backdrop_path,
      this.original_title,
      this.genre_ids,
      this.title,
      this.vote_average,
      this.overview,
      this.release_date})
      : super._() {
    if (popularity == null) {
      throw new BuiltValueNullFieldError('VideoItem', 'popularity');
    }
    if (vote_count == null) {
      throw new BuiltValueNullFieldError('VideoItem', 'vote_count');
    }
    if (video == null) {
      throw new BuiltValueNullFieldError('VideoItem', 'video');
    }
    if (poster_path == null) {
      throw new BuiltValueNullFieldError('VideoItem', 'poster_path');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('VideoItem', 'id');
    }
    if (adult == null) {
      throw new BuiltValueNullFieldError('VideoItem', 'adult');
    }
    if (original_title == null) {
      throw new BuiltValueNullFieldError('VideoItem', 'original_title');
    }
    if (genre_ids == null) {
      throw new BuiltValueNullFieldError('VideoItem', 'genre_ids');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('VideoItem', 'title');
    }
    if (vote_average == null) {
      throw new BuiltValueNullFieldError('VideoItem', 'vote_average');
    }
    if (overview == null) {
      throw new BuiltValueNullFieldError('VideoItem', 'overview');
    }
    if (release_date == null) {
      throw new BuiltValueNullFieldError('VideoItem', 'release_date');
    }
  }

  @override
  VideoItem rebuild(void Function(VideoItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoItemBuilder toBuilder() => new VideoItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoItem &&
        popularity == other.popularity &&
        vote_count == other.vote_count &&
        video == other.video &&
        poster_path == other.poster_path &&
        id == other.id &&
        adult == other.adult &&
        backdrop_path == other.backdrop_path &&
        original_title == other.original_title &&
        genre_ids == other.genre_ids &&
        title == other.title &&
        vote_average == other.vote_average &&
        overview == other.overview &&
        release_date == other.release_date;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, popularity.hashCode),
                                                    vote_count.hashCode),
                                                video.hashCode),
                                            poster_path.hashCode),
                                        id.hashCode),
                                    adult.hashCode),
                                backdrop_path.hashCode),
                            original_title.hashCode),
                        genre_ids.hashCode),
                    title.hashCode),
                vote_average.hashCode),
            overview.hashCode),
        release_date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideoItem')
          ..add('popularity', popularity)
          ..add('vote_count', vote_count)
          ..add('video', video)
          ..add('poster_path', poster_path)
          ..add('id', id)
          ..add('adult', adult)
          ..add('backdrop_path', backdrop_path)
          ..add('original_title', original_title)
          ..add('genre_ids', genre_ids)
          ..add('title', title)
          ..add('vote_average', vote_average)
          ..add('overview', overview)
          ..add('release_date', release_date))
        .toString();
  }
}

class VideoItemBuilder implements Builder<VideoItem, VideoItemBuilder> {
  _$VideoItem _$v;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  int _vote_count;
  int get vote_count => _$this._vote_count;
  set vote_count(int vote_count) => _$this._vote_count = vote_count;

  bool _video;
  bool get video => _$this._video;
  set video(bool video) => _$this._video = video;

  String _poster_path;
  String get poster_path => _$this._poster_path;
  set poster_path(String poster_path) => _$this._poster_path = poster_path;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  bool _adult;
  bool get adult => _$this._adult;
  set adult(bool adult) => _$this._adult = adult;

  String _backdrop_path;
  String get backdrop_path => _$this._backdrop_path;
  set backdrop_path(String backdrop_path) =>
      _$this._backdrop_path = backdrop_path;

  String _original_title;
  String get original_title => _$this._original_title;
  set original_title(String original_title) =>
      _$this._original_title = original_title;

  ListBuilder<int> _genre_ids;
  ListBuilder<int> get genre_ids =>
      _$this._genre_ids ??= new ListBuilder<int>();
  set genre_ids(ListBuilder<int> genre_ids) => _$this._genre_ids = genre_ids;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  double _vote_average;
  double get vote_average => _$this._vote_average;
  set vote_average(double vote_average) => _$this._vote_average = vote_average;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _release_date;
  String get release_date => _$this._release_date;
  set release_date(String release_date) => _$this._release_date = release_date;

  VideoItemBuilder();

  VideoItemBuilder get _$this {
    if (_$v != null) {
      _popularity = _$v.popularity;
      _vote_count = _$v.vote_count;
      _video = _$v.video;
      _poster_path = _$v.poster_path;
      _id = _$v.id;
      _adult = _$v.adult;
      _backdrop_path = _$v.backdrop_path;
      _original_title = _$v.original_title;
      _genre_ids = _$v.genre_ids?.toBuilder();
      _title = _$v.title;
      _vote_average = _$v.vote_average;
      _overview = _$v.overview;
      _release_date = _$v.release_date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VideoItem;
  }

  @override
  void update(void Function(VideoItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VideoItem build() {
    _$VideoItem _$result;
    try {
      _$result = _$v ??
          new _$VideoItem._(
              popularity: popularity,
              vote_count: vote_count,
              video: video,
              poster_path: poster_path,
              id: id,
              adult: adult,
              backdrop_path: backdrop_path,
              original_title: original_title,
              genre_ids: genre_ids.build(),
              title: title,
              vote_average: vote_average,
              overview: overview,
              release_date: release_date);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genre_ids';
        genre_ids.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'VideoItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
