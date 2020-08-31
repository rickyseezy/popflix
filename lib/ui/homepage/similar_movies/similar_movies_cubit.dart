import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/ui/homepage/similar_movies/similar_movies_state.dart';

class SimilarMoviesCubit extends Cubit<SimilarMoviesState> {
  final MovieRepository _movieRepository;

  SimilarMoviesCubit(this._movieRepository): super (SimilarMoviesLoadingState());

  void loadSimilarMovies(int id) async {
    try {
      emit(SimilarMoviesLoadingState());
      final response = await this._movieRepository.getSimilarMovies(id);
      emit(SimilarMoviesLoadedState((b) => b..videos.replace(response.results)));
    } catch (e) {
      emit(SimilarMoviesErrorState());
    }
  }
}