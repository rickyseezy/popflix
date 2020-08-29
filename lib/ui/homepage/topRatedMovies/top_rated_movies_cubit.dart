import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/ui/homepage/topRatedMovies/top_rated_movies_state.dart';

class TopRatedMoviesCubit extends Cubit<TopRatedMoviesState> {
  final MovieRepository _movieRepository;
  TopRatedMoviesCubit(this._movieRepository): super(TopRatedMoviesLoadingState());

  void loadTopRatedMovies() async {
    try {
      emit(TopRatedMoviesLoadingState());
      final response = await _movieRepository.getTopRatedMovies();
      emit(TopRatedMoviesLoadedState((b) => b..videos.replace(response.results)));
    } catch(e) {
      emit(TopRatedMoviesErrorState());
    }
  }
}