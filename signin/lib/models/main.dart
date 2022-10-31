import 'package:flutter/material.dart';
import 'sign_in.dart';
void main() {
  runApp(const SignInApp());
}
class SignInApp extends StatelessWidget {
  const SignInApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign In',
      home: SignIn(),
    );

  }
}
