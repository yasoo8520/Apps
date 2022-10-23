import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'circleimage.dart';
import 'themee.dart';
class AuthorCard extends StatelessWidget{
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              SizedBox(
                width: 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FooderlishTheme.textLightTheme.bodyText1,
                  ),
                  Text(
                    title,
                    style: FooderlishTheme.textLightTheme.bodyText1,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            iconSize: 30,
            color: Colors.grey[800],
              onPressed: (){
              const snackBar = SnackBar(content: Text('Loved'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: Icon(Icons.favorite_border),
          ),
        ],
      ),
    );
  }
  
}