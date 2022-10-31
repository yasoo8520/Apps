
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SignInTheme {
  static final  textTheme = TextTheme(
      headline1: GoogleFonts.aclonica(
        color: Colors.white,
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
     headline2:GoogleFonts.aclonica(
       color: Colors.black,
       fontSize: 18,
       fontWeight: FontWeight.bold,
     ),
    bodyText1: GoogleFonts.aclonica(
      color: Colors.black,
      fontSize: 16,
    ),
      );
  static final desginTheme = ThemeData(
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 25
      ),
  );
}