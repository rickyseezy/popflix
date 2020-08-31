import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/ui/homepage/movie_credit/movie_credit_state.dart';

class MovieCreditCubit extends Cubit<MovieCreditState> {
  final MovieRepository _movieRepository;

  MovieCreditCubit(this._movieRepository) : super(MovieCreditLoadingState());

  void loadCast(int id) async {
    try {
      print('loadCast');
      emit(MovieCreditLoadingState());
      final response = await _movieRepository.getMovieCredit(id);
      emit(MovieCreditLoadedState((b) => b..cast.replace(response.cast)));
    }catch(e) {
      print(e);
      emit(MovieCreditErrorState());
    }
  }
}