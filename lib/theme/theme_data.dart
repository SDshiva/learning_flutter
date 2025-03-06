import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  hintColor: Colors.blueAccent,
  scaffoldBackgroundColor: Colors.white,
  cardColor: Colors.pinkAccent.shade100,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.deepPurple,
  hintColor: Colors.purpleAccent,
  scaffoldBackgroundColor: Colors.black,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: Colors.white),
  ),
);
