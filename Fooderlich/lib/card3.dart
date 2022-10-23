import 'dart:math';

import 'package:flutter/material.dart';
import 'themee.dart';
class Card3 extends StatelessWidget{
  const Card3({super.key});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/carrot.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Stack(
          // TODO: Add dark overlay BoxDecoration
          // TODO: Add Container, Column, Icon and Text
          // TODO: Add Center widget with Chip widget children
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.book,size: 40),
                  SizedBox(height: 8,),
                  Text('Recipe Trends',style: FooderlishTheme.DarkTextTheme.headline1,)
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                runSpacing: 12,
                children: [
                  Chip(
                      label: Text('carrot',style: FooderlishTheme.DarkTextTheme.bodyText2,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                    },
                  ),
                  Chip(
                    label: Text('healthy',style: FooderlishTheme.DarkTextTheme.bodyText2,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                    },
                  ),
                  Chip(
                    label: Text('Carrot',style: FooderlishTheme.DarkTextTheme.bodyText2,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                    },
                  ),
                  Chip(
                    label: Text('Greens',style: FooderlishTheme.DarkTextTheme.bodyText2,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                    },
                  ),
                  Chip(
                    label: Text('Lints',style: FooderlishTheme.DarkTextTheme.bodyText2,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                    },
                  ),
                  Chip(
                    label: Text('LemoGreens',style: FooderlishTheme.DarkTextTheme.bodyText2,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {

                    },
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}