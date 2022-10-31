import 'package:flutter/material.dart';
import 'sign_in_theme.dart';
import 'user_name_custom.dart';
import 'password_field.dart';
class SignInForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SignInFormState();
  }

}

class _SignInFormState extends State<SignInForm>{
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
       // margin: EdgeInsets.only(top: 50),
        width: 350,
        height: 500,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text('SIGN IN',style: SignInTheme.textTheme.headline2,),
            ),
           const UserNameField(),
            SizedBox(height: 30,),
            PasswordFeild(),
          ],
        ),
      ),
    );
  }
}