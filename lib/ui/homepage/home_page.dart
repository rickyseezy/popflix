import 'package:flutter/material.dart';
import 'package:movie_app/ui/homepage/slider/home_page_slider.dart';
import 'package:movie_app/ui/homepage/topRatedMovies/top_rated_movies.dart';
import 'package:movie_app/ui/homepage/trendingPersons/trending_persons.dart';

import 'GenderTabBar/gender_tab_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: <Widget>[
            HomePageSlider(),
            GenderTabBar(),
            TrendingPersons(),
            TopRatedMovies(),
          ],
      ),
    );
  }
}
