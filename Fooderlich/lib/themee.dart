import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class FooderlishTheme{
  static TextTheme textLightTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    bodyText2: GoogleFonts.openSans(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    headline1: GoogleFonts.openSans(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
    headline2: GoogleFonts.openSans(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 25,
    ),
    headline6: GoogleFonts.openSans(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  );
  static TextTheme DarkTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize:16,
    ),
    headline1: GoogleFonts.openSans(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize:25,
    ),
    headline2: GoogleFonts.openSans(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 35,
    ),
    headline3:  GoogleFonts.openSans(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 25,
    ),
    headline6: GoogleFonts.openSans(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  );
  static ThemeData light(){
    return ThemeData(
        brightness: Brightness.light,
        checkboxTheme: CheckboxThemeData(
          checkColor: MaterialStateColor.resolveWith(
                  (states){
                return Colors.black;
              }),
        ),
        appBarTheme:const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black45,
        ),
      textTheme:textLightTheme,
      bottomNavigationBarTheme:const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.redAccent
      ),
    );
  }
  static ThemeData darkk = ThemeData(
      brightness: Brightness.dark,
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateColor.resolveWith(
                (states){
              return Colors.white;
            }),
      ),
      appBarTheme:const AppBarTheme(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      textTheme: DarkTextTheme,
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
        backgroundColor: Colors.black12,
        selectedItemColor: Colors.redAccent
    ),
  );
}
