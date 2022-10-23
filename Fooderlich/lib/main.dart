import 'package:flutter/material.dart';
import 'package:fooderlich/main.dart';
import 'themee.dart';
import 'home.dart';
void main() {
  runApp( FooderLish());
}

class FooderLish extends StatelessWidget {
  final theme = FooderlishTheme.darkk;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'FooderLish',
      home:const HomePage(),
    );
  }
}
