import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'author_card.dart';
import 'themee.dart';
class Card2 extends StatelessWidget{
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
            width: 350,
            height: 450
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
              image: AssetImage('assets/images/juice.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            children: [
              const AuthorCard(
                authorName: 'Mike Katz',
                title: 'Smoothie Connoisseur',
                imageProvider: AssetImage('assets/images/man.jpg'),
              ),
              Expanded(
                child: Stack(
                  children: const[
                    Positioned(
                      bottom: 16,
                      right: 16,
                      child: Text(
                        'Recipe',
                        style: TextStyle( color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,),
                      ),
                    ),
                    Positioned(
                      bottom: 70,
                      left: 10,
                      child: RotatedBox(
                        quarterTurns: 3,
                          child: Text('Smoothies',style: TextStyle( color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }

}