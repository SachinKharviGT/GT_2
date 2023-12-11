import 'package:flutter/material.dart';

class tOutlineButtonTheme{

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: Colors.black,
      side: BorderSide(color: Colors.black),
    ),
  );
  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: Colors.white,
      side: BorderSide(color: Colors.white),
    ),
  );
}