import 'package:flutter/material.dart';
import '../components/sign_in_form.dart';
import '../components/background.dart';
class SignIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SignInState();

  }
}

class _SignInState extends State<SignIn>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              BackgroundWidget(),
              SignInForm(),
            ],
          ),
        ),
      ),
    );

  }
}
