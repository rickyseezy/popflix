// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../screens/detail_movie_screen.dart';

class Routes {
  static const String homeScreen = '/';
  static const String detailMovieScreen = '/detail-movie-screen';
  static const all = <String>{
    homeScreen,
    detailMovieScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.detailMovieScreen, page: DetailMovieScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    DetailMovieScreen: (data) {
      final args = data.getArgs<DetailMovieScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => DetailMovieScreen(args.id),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DetailMovieScreen arguments holder class
class DetailMovieScreenArguments {
  final int id;
  DetailMovieScreenArguments({@required this.id});
}
