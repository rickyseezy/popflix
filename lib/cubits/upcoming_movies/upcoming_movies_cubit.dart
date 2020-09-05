import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cubits/states.dart';
import 'package:movie_app/data/repository/movie_repository.dart';

class UpcomingMoviesCubit extends Cubit<UpcomingMoviesState> {
  final MovieRepository _movieRepository;

  UpcomingMoviesCubit(this._movieRepository)
      : super(UpcomingMoviesLoadingState());


  void changeTab(int index) async {
    emit(UpcomingMoviesChangeTabState(index));
    loadUpcomingMovies();
  }

  void loadUpcomingMovies() async {
    try {
      emit(UpcomingMoviesLoadingState());
      final movies = await _movieRepository.getPopularMovies();
      emit(UpcomingMoviesLoadedState((b) => b..videos.replace(movies.results)));
    } catch (e) {
      emit(UpcomingMoviesErrorState());
    }
  }
}
