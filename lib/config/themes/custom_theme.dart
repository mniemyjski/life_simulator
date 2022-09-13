import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Georgia',
      appBarTheme: AppBarTheme(color: const Color.fromRGBO(0, 103, 163, 1).withOpacity(0.5)),
      primaryColor: const Color.fromRGBO(0, 103, 163, 1).withOpacity(0.5),
      scaffoldBackgroundColor: const Color.fromRGBO(0, 83, 163, 1),
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
          backgroundColor:
              MaterialStateProperty.all(const Color.fromRGBO(0, 103, 163, 1).withOpacity(0.5)),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
      cardColor: Colors.grey[300]!.withOpacity(0.9),
      floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(
        backgroundColor: const Color.fromRGBO(0, 103, 163, 1).withOpacity(0.5),
        foregroundColor: Colors.white,
      ),
      splashColor: Colors.black,
    );
  }
}
