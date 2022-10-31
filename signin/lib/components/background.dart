import 'package:flutter/material.dart';
import 'logo_image.dart';
class BackgroundWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            child:const LogoImage(),
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
    );
  }

}