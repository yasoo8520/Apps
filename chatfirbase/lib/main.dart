import 'package:flutter/material.dart';
import 'screens/home/wrapper.dart';
void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wraper(),
    );
  }
}