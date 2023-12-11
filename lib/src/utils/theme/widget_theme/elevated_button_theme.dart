import 'package:flutter/material.dart';

class tElevatedButtonTheme {

  static final linghtElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: Colors.black,
      side: BorderSide(color: Colors.black),
    ),
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: Colors.white,
      side: BorderSide(color: Colors.white),
    ),
  );
}