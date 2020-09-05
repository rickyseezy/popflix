import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/model/character/character.dart';
import 'package:movie_app/themes/themes.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:movie_app/cubits/trending_persons/trending_persons_cubit.dart';
import 'package:movie_app/cubits/trending_persons/trending_persons_state.dart';
import 'package:movie_app/widgets/avatar_list/avatar_list.dart';

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
    final persons = state.results;
    final List<Character> personsList = [];

    persons.forEach((p) {
      final person = Character((b) => b..name= p.name
        ..profile_path = p.profile_path);
      personsList.add(person);
    });
    return AvatarRoleList(personsList);
  }
}
