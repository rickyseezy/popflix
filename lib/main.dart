import 'package:auto_route/auto_route.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/injector.dart';
import 'package:movie_app/router/router.gr.dart';
import 'package:movie_app/themes/themes.dart';
import 'package:movie_app/themes/themes.dart' as style;
import 'package:movie_app/ui/homepage/home_page.dart';

void main() {
  Injector.initKiwi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkTheme,
      builder: ExtendedNavigator.builder<Router>(router: Router(),),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.Custom.mainColor,
      body: HomePage(),
      appBar: AppBar(
        elevation: 0,
        leading: Icon(EvaIcons.menu2Outline),
        title: Text(
          'PopFlix',
          style: style.darkTheme.textTheme.bodyText1,
        ),
        actions: <Widget>[
          Icon(EvaIcons.searchOutline)
        ],
      ),
    );
  }
}

