import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get darkTheme {
    return ThemeData(
        fontFamily: 'Georgia',
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 24,
          ),
          // headline2: TextStyle(fontSize: 16, color: Colors.white),
          // headline3: TextStyle(color: Colors.white),
          // headline4: TextStyle(color: Colors.white),
          // headline5: TextStyle(color: Colors.white),
          bodyText1: TextStyle(fontSize: 10),
          bodyText2: TextStyle(fontSize: 10),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey[900]),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData()
            .copyWith(backgroundColor: Colors.grey[900], foregroundColor: Colors.white));
  }

  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Georgia',
      appBarTheme: AppBarTheme(color: Color.fromRGBO(0, 103, 163, 1)),
      primaryColor: Color.fromRGBO(0, 103, 163, 1),
      scaffoldBackgroundColor: Color.fromRGBO(0, 121, 191, 1),
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 24, color: Colors.white),
        // headline2: TextStyle(fontSize: 16, color: Colors.white),
        // headline3: TextStyle(color: Colors.white),
        // headline4: TextStyle(color: Colors.white),
        // headline5: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.black, fontSize: 10),
        bodyText2: TextStyle(color: Colors.white, fontSize: 10),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color.fromRGBO(0, 103, 163, 1)),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
      cardColor: Colors.grey[200],
    );
  }
}
