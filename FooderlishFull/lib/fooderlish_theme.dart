
import 'package:flutter/material.dart';
class FooderLishTheme {
  static final  LightText = TextTheme(
        headline1: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),
  );
  static final LightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: LightText.headline1,
      backgroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: true,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey[800],

    ),
  );
}