import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/ui/homepage/trendingPersons/trending_persons_state.dart';

class TrendingPersonsCubit extends Cubit<TrendingPersonsState>{
  final MovieRepository _movieRepository;

  TrendingPersonsCubit(this._movieRepository): super(TrendingPersonsLoadingState());

  void loadTrendingPerson() async {
    try {
      emit(TrendingPersonsLoadingState());
      final response = await _movieRepository.getTrendingPersons();
      emit(TrendingPersonsLoadedState((b) => b..results.replace(response.results)));
    } catch(e) {
      emit(TrendingPersonsErrorState());
    }
  }
}