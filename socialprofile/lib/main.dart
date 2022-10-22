import 'package:flutter/material.dart';
import 'theme.dart';
import 'main_page.dart';
void main() {
  runApp(const Alarm());
}
class Alarm extends StatelessWidget{
  const Alarm({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = AlarmTheme.light;
    return  MaterialApp(
      theme: theme,
      title: 'Alarm',
      home:  MainPage(),
    );
  }

}

