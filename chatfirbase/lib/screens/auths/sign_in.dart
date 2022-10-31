import 'package:flutter/material.dart';

import '../../db_services/db_auth.dart';



class SignIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SignInState();
  }

}

class SignInState extends State<SignIn>{
  @override
  Widget build(BuildContext context) {
    AuthServices _auth = AuthServices();
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Container(
        child: ElevatedButton(
          child: Text('sign in'),
          onPressed: ()async{
              dynamic result = await _auth.SignInAuth();
              if(result == null){
                print('Null');
              }else{
                print('Signed In');
              }
          },
        ),
      ),
    );
  }
}