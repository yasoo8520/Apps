import 'package:flutter/material.dart';
import 'home.dart';
import 'fooderlish_theme.dart';
void main() {
  runApp(const FooderLishApp());
}

class FooderLishApp extends StatelessWidget {
  const FooderLishApp({super.key});

  @override
  Widget build(BuildContext context) {
    final fooderlishTheme = FooderLishTheme.LightTheme;
    return MaterialApp(
      theme: fooderlishTheme,
      home: const HomePage(),
    );
  }
}
