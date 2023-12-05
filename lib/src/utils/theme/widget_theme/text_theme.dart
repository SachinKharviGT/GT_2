import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GT_text_theme {
  static TextTheme lightTextTheme =TextTheme(
      headline2: GoogleFonts.montserrat(
          color: Colors.black
      ),
    subtitle2: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 24
    )
  );
  static TextTheme darkTextTheme =TextTheme(
      headline2: GoogleFonts.montserrat(
          color: Colors.black
      ),
      subtitle2: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 24
      )
  );

}