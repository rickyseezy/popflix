import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cubits/states.dart';
import 'package:movie_app/data/repository/movie_repository.dart';

class GenreCubit extends Cubit<GenreState> {
  final MovieRepository _movieRepository;

  GenreCubit(this._movieRepository): super(GenreLoadingState());

  void loadGenres() async {
    try{
      emit(GenreLoadingState());
      final response = await _movieRepository.getGenreMoviesList();
      emit(GenreLoadedState((b) => b..genres.replace(response.genres)));
    } catch (e) {
      emit(GenreErrorState());
    }
  }
}