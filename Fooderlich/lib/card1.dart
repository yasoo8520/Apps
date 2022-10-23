import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooderlich/themee.dart';

class Card1 extends StatelessWidget{
  const Card1({super.key});
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
       // margin:const EdgeInsets.all(16) ,
          padding:const EdgeInsets.all(16),
        constraints:const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration:const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image:DecorationImage(
            image: AssetImage('assets/images/chef.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Text(
              category,
              style: FooderlishTheme.DarkTextTheme.bodyText1,
            ),
            Positioned(
              top: 20,
                child: Text(
                  title,
                  style: FooderlishTheme.DarkTextTheme.headline2,
                ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                description,
                style: FooderlishTheme.DarkTextTheme.bodyText1,
              ),
            ),
            Positioned(
              bottom: 10,
                right: 0,
                child: Text(
                  chef,
                  style: FooderlishTheme.DarkTextTheme.bodyText1,
                )
            ),
          ],
        ),
      ),
    );
  }

}