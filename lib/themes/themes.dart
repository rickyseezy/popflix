import 'package:flutter/material.dart';

class Custom {
  const Custom();

  static const Color mainColor = const Color(0xFF151C26);
  static const Color secondColor = const Color(0xFFF4C10F);
  static const Color titleColor = const Color(0xFF5A606B);
}

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Custom.mainColor,
    accentColor: Custom.secondColor,
  textTheme: TextTheme(
    bodyText1: TextStyle(fontSize: 20.0, color: Colors.white)
  )
);
