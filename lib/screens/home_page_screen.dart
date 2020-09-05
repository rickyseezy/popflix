import 'package:flutter/material.dart';
import 'package:movie_app/widgets/widgets.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HomePageSlider(),
          GenreTabBar(),
          TrendingPersons(),
          TopRatedMovies(),
        ],
      ),
    );
  }
}
