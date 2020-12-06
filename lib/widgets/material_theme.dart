import 'package:flutter/material.dart';

class LightTheme {
  static Map<int, Color> _primaryLightSwatch = {
    50: Color.fromRGBO(255, 96, 144, .1),
    100: Color.fromRGBO(255, 96, 144, .2),
    200: Color.fromRGBO(255, 96, 144, .3),
    300: Color.fromRGBO(255, 96, 144, .4),
    400: Color.fromRGBO(255, 96, 144, .5),
    500: Color.fromRGBO(255, 96, 144, .6),
    600: Color.fromRGBO(255, 96, 144, .7),
    700: Color.fromRGBO(255, 96, 144, .8),
    800: Color.fromRGBO(255, 96, 144, .9),
    900: Color.fromRGBO(255, 96, 144, 1),
  };

  static Map<int, Color> _primaryDarkSwatch = {
    50: Color.fromRGBO(176, 0, 78, .1),
    100: Color.fromRGBO(176, 0, 78, .2),
    200: Color.fromRGBO(176, 0, 78, .3),
    300: Color.fromRGBO(176, 0, 78, .4),
    400: Color.fromRGBO(176, 0, 78, .5),
    500: Color.fromRGBO(176, 0, 78, .6),
    600: Color.fromRGBO(176, 0, 78, .7),
    700: Color.fromRGBO(176, 0, 78, .8),
    800: Color.fromRGBO(176, 0, 78, .9),
    900: Color.fromRGBO(176, 0, 78, 1),
  };
  static MaterialColor _primaryColorLight = MaterialColor(0xFFFF6090, _primaryLightSwatch);

  final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.pink[500],
    primaryColorLight: _primaryColorLight,
    primaryColorDark: MaterialColor(0xFFB0003A, _primaryDarkSwatch),
    accentColor: Colors.purple[500],
    backgroundColor: Colors.pink[200],
    buttonTheme: ButtonThemeData(
        buttonColor: _primaryColorLight,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 16.0,
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
      headline1: TextStyle(
        fontSize: 24.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

class DarkTheme {
  static Map<int, Color> _primaryLightSwatch = {
    50: Color.fromRGBO(255, 193, 227, .1),
    100: Color.fromRGBO(255, 193, 227, .2),
    200: Color.fromRGBO(255, 193, 227, .3),
    300: Color.fromRGBO(255, 193, 227, .4),
    400: Color.fromRGBO(255, 193, 227, .5),
    500: Color.fromRGBO(255, 193, 227, .6),
    600: Color.fromRGBO(255, 193, 227, .7),
    700: Color.fromRGBO(255, 193, 227, .8),
    800: Color.fromRGBO(255, 193, 227, .9),
    900: Color.fromRGBO(255, 193, 227, 1),
  };

  static Map<int, Color> _primaryDarkSwatch = {
    50: Color.fromRGBO(191, 95, 130, .1),
    100: Color.fromRGBO(191, 95, 130, .2),
    200: Color.fromRGBO(191, 95, 130, .3),
    300: Color.fromRGBO(191, 95, 130, .4),
    400: Color.fromRGBO(191, 95, 130, .5),
    500: Color.fromRGBO(191, 95, 130, .6),
    600: Color.fromRGBO(191, 95, 130, .7),
    700: Color.fromRGBO(191, 95, 130, .8),
    800: Color.fromRGBO(191, 95, 130, .9),
    900: Color.fromRGBO(191, 95, 130, 1),
  };
  static MaterialColor _primaryColorLight = MaterialColor(0xFFFFC1E3, _primaryLightSwatch);

  final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.pink[200],
    primaryColorLight: _primaryColorLight,
    primaryColorDark: MaterialColor(0xFFBF5F82, _primaryDarkSwatch),
    accentColor: Colors.purple[300],
    backgroundColor: Colors.black45,
    buttonTheme: ButtonThemeData(
      buttonColor: _primaryColorLight,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 16.0,
        color: Colors.black87,
      ),
      bodyText2: TextStyle(
        fontSize: 16.0,
        color: Colors.white60,
      ),
      headline1: TextStyle(
        fontSize: 24.0,
        color: Colors.black45,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
