// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/detail_movie/detail_movie.dart';

class Routes {
  static const String homeScreen = '/';
  static const String detailMovie = '/detail-movie';
  static const all = <String>{
    homeScreen,
    detailMovie,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.detailMovie, page: DetailMovie),
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
    DetailMovie: (data) {
      final args = data.getArgs<DetailMovieArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => DetailMovie(args.id),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DetailMovie arguments holder class
class DetailMovieArguments {
  final int id;
  DetailMovieArguments({@required this.id});
}
