
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AlarmTheme {
  static TextTheme lightText = TextTheme(
    bodyText1: GoogleFonts.openSans(
      color: Colors.grey[850],
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    ),
    headline1: GoogleFonts.openSans(
      color: Colors.grey[850],
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    ),
    headline4:  GoogleFonts.openSans(
      color: Colors.grey[800],
      fontSize: 20,
      fontWeight: FontWeight.bold,
      //fontStyle: FontStyle.italic,
    ),
    bodyText2: GoogleFonts.openSans(
      color: Colors.grey[700],
      fontSize: 14,
      fontWeight: FontWeight.bold,
      //fontStyle: FontStyle.italic,
    ),

  );
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    textTheme: lightText,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.grey[800],

      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.blue[200],
      showUnselectedLabels: true,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.blueGrey,
    ),

  );
}