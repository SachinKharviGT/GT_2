import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt_2/src/utils/theme/widget_theme/text_theme.dart';



class GT_Theme{
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
    textTheme: GT_text_theme.lightTextTheme
  );
  static ThemeData dartTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: GT_text_theme.darkTextTheme
  );

}