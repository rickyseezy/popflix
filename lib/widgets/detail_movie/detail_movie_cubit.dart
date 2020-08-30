import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/widgets/detail_movie/detail_movie_state.dart';

class DetailMovieCubit extends Cubit<DetailMovieState> {
  final MovieRepository _movieRepository;
  DetailMovieCubit(this._movieRepository): super(DetailMovieLoadingState());

  void loadMovie(int id) async {
    try {
      emit(DetailMovieLoadingState());
      final response = await _movieRepository.getMovieDetails(id);
      emit(DetailMovieLoadedState((b) => b..result.replace(response)));
    } catch(e) {
      emit(DetailMovieErrorState());
    }
  }
}