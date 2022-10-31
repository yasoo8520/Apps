import 'package:flutter/material.dart';
import 'sign_in_theme.dart';
class PasswordFeild extends StatefulWidget{
  const PasswordFeild({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PasswordFeildState();
  }

}

class _PasswordFeildState extends State<PasswordFeild>{
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10,top: 5),
          child: CircleAvatar(
            backgroundColor: Colors.purple,
            child: Icon(
              Icons.lock_outline,
              color: SignInTheme.desginTheme.iconTheme.color,
              size: SignInTheme.desginTheme.iconTheme.size,
            ),
          ),
        ),
        TextField(
          textAlign: TextAlign.start,
          style:SignInTheme.textTheme.bodyText1,
          decoration: InputDecoration(
              hintText: 'Password',
              contentPadding: EdgeInsets.only(left: 55),
              constraints: BoxConstraints(
                  maxWidth: 300
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              )
          ),
          keyboardType: TextInputType.visiblePassword,
        ),
      ],
    );
  }
}