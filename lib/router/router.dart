import 'package:auto_route/auto_route_annotations.dart';
import 'package:movie_app/main.dart';
import 'package:movie_app/ui/homepage/home_page.dart';
import 'package:movie_app/widgets/detail_movie/detail_movie.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: HomeScreen, initial: true),
  MaterialRoute(page: DetailMovie)
])
class $Router{}