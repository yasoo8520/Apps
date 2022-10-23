import 'package:flutter/material.dart';

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
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Center(
                          child: Padding(
                            padding:  EdgeInsets.only(top: 50),
                            child: Column(
                              children: [
                                Container(
                                  width: 80,
                                    child: Image(image: AssetImage('assets/icons/user.png'),color: Colors.white,)),
                                Text('FREEDOM',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400), )
                              ],
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.pink.shade700,
                              Colors.purple
                            ]
                          )
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.grey[200],
                      ),
                    )
                  ],
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 160),
                    width: 350,
                    height: 500,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text('SIGN IN',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        Stack(
                          children: [
                            Icon(
                              Icons.person,
                              shadows: [
                                Shadow(color: Colors.purple)
                              ],
                            ),
                            TextField(

                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  }
}
