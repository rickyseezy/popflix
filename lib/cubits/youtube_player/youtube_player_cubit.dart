import 'package:bloc/bloc.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/cubits/states.dart';

class YoutubePlayerCubit extends Cubit<YoutubePlayerState> {
  final MovieRepository _movieRepository;

  YoutubePlayerCubit(this._movieRepository) : super(YoutubePlayerInitialState());

  void loadTrailer(int id) async {
    try {
      final response = await  _movieRepository.getMovieVideos(id);
      final parsedVideos = response.results.where((v) => v.site == 'YouTube').toList();
      emit(YoutubePlayerShowTrailerState((b) => b..youtubeVideoId = parsedVideos[0].key));
    } catch (e) {
      print(e);
      emit(YoutubePlayerErrorState());
    }
  }

  void showBanner() {
    emit(YoutubePlayerShowBannerState());
  }
}
