import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt_2/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:gt_2/src/utils/theme/widget_theme/outline_button_theme.dart';
import 'package:gt_2/src/utils/theme/widget_theme/textForm_Widget_theme.dart';
import 'package:gt_2/src/utils/theme/widget_theme/text_theme.dart';



class GT_Theme{
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
    textTheme: GT_text_theme.lightTextTheme,
    outlinedButtonTheme: tOutlineButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: tElevatedButtonTheme.linghtElevatedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme

  );
  static ThemeData dartTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: GT_text_theme.darkTextTheme,
      outlinedButtonTheme: tOutlineButtonTheme.darkOutlineButtonTheme,
      elevatedButtonTheme: tElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme



  );

}