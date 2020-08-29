import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/network/movie_data_source.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/ui/homepage/slider/slider_state.dart';

class SliderCubit extends Cubit<SliderState> {
  final MovieRepository _movieRepository;

  SliderCubit(this._movieRepository) : super(SliderLoadingState());

  void loadSlider() async {
    try {
      emit(SliderLoadingState());
      final movies = await _movieRepository.getPopularMovies();
      emit(SliderLoadedState((b) => b..videos.replace(movies.results)));
    } on MovieErrorException catch(e) {
      emit(SliderErrorState(e.message));
    } on EmptyMovieException catch(e) {
      emit(SliderErrorState(e.message));
    }
  }
}