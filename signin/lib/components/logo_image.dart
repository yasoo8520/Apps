import 'package:flutter/material.dart';
import 'sign_in_theme.dart';
class LogoImage extends StatelessWidget{
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 70,
                child: Image(image: AssetImage('assets/icons/user.png'),color: Colors.white,)
            ),
            Text('FREEDOM',style: SignInTheme.textTheme.headline1, )
          ],
        ),
      ),
    );
  }

}