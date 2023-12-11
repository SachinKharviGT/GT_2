import 'package:flutter/material.dart';

class TextFormFieldTheme{

  static InputDecorationTheme lightInputDecorationTheme =
      InputDecorationTheme(
        border: OutlineInputBorder(),
            prefixIconColor: Colors.blue,
            floatingLabelStyle: TextStyle(color: Colors.blue),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2,color: Colors.blue)

        ),
      );

  static InputDecorationTheme darkInputDecorationTheme =
  InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: Colors.blue,
    floatingLabelStyle: TextStyle(color: Colors.blue),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2,color: Colors.blue)

    ),
  );
}