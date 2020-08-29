import 'package:auto_route/auto_route_annotations.dart';
import 'package:movie_app/main.dart';
import 'package:movie_app/ui/homepage/home_page.dart';
import 'package:movie_app/widgets/detail_video.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: HomeScreen, initial: true),
  MaterialRoute(page: DetailVideo)
])
class $Router{}