import 'package:auto_route/auto_route_annotations.dart';
import 'package:movie_app/main.dart';
import 'package:movie_app/screens/detail_movie_screen.dart';


@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: HomeScreen, initial: true),
  MaterialRoute(page: DetailMovieScreen)
])
class $Router{}