import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/themes/themes.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:movie_app/ui/homepage/trendingPersons/trending_persons_cubit.dart';
import 'package:movie_app/ui/homepage/trendingPersons/trending_persons_state.dart';

class TrendingPersons extends StatefulWidget {
  @override
  _TrendingPersonsState createState() => _TrendingPersonsState();
}

class _TrendingPersonsState extends State<TrendingPersons> {
  final _trendingPersonsCubit =
      kiwi.KiwiContainer().resolve<TrendingPersonsCubit>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _trendingPersonsCubit.loadTrendingPerson();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'TRENDING PERSONS ON THIS WEEK',
            style: TextStyle(fontSize: 12, color: Custom.titleColor),
          ),
        ),
        SizedBox(height: 8,),
        BlocProvider(
            create: (_) => _trendingPersonsCubit,
            child: BlocBuilder<TrendingPersonsCubit, TrendingPersonsState>(
              builder: (context, state) {
                if (state is TrendingPersonsLoadingState) {
                  return _onLoading(context);
                }

                if (state is TrendingPersonsLoadedState) {
                  return _onSuccess(context, state);
                }

                return _onLoading(context);
              },
            )),
      ],
    );
  }

  Widget _onLoading(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _onSuccess(BuildContext context, TrendingPersonsLoadedState state) {
    final persons = state.results.toList();
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      child: ListView.builder(
        itemBuilder: (builder, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://image.tmdb.org/t/p/original/${persons[index].profile_path}'))),
                ),
                SizedBox(height: 10,),
                Text(persons[index].name, style: TextStyle(fontSize: 10),)
              ],
            ),
          );
        },
        itemCount: persons.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
