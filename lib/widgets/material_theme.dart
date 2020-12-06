import 'package:flutter/material.dart';

final materialThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.pink[300],
  accentColor: Colors.purple[300],
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 24.0,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
  ),
);

Map<int, Color> _pinkPallete = {
  50: Color.fromRGBO(244, 143, 177, 0.05),
  100: Color.fromRGBO(244, 143, 177, 0.1),
  200: Color.fromRGBO(244, 143, 177, 0.2),
  300: Color.fromRGBO(244, 143, 177, 0.3),
  400: Color.fromRGBO(244, 143, 177, 0.4),
  500: Color.fromRGBO(244, 143, 177, 0.5),
  600: Color.fromRGBO(244, 143, 177, 0.6),
  700: Color.fromRGBO(244, 143, 177, 0.7),
  800: Color.fromRGBO(244, 143, 177, 0.8),
  900: Color.fromRGBO(244, 143, 177, 0.9),
};
