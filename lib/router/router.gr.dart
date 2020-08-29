// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/detail_video.dart';

class Routes {
  static const String homeScreen = '/';
  static const String detailVideo = '/detail-video';
  static const all = <String>{
    homeScreen,
    detailVideo,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.detailVideo, page: DetailVideo),
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
    DetailVideo: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DetailVideo(),
        settings: data,
      );
    },
  };
}
