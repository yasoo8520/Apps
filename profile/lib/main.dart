import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "first reviews app", home: Page());
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              //color: Colors.yellow,
              height: 300,
              width: double.infinity,
              child: Stack(
                children: [
                  //بداية الصورة الخلفية للملف
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.purple,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.network(
                        'https://wallpapercave.com/wp/wp8575373.jpg',
                        width: 50,
                      ),
                    ),
                  ),
//نهاية الصورة الخلفية للملف
                  //الصورة البروفايل....
                  Center(
                    child: Container(
                      // margin: EdgeInsets.only(top:1),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        width: 150,
                        height: 150,
                        //color: Colors.amber,
                        child: CircleAvatar(
                          radius: 65,
                          backgroundImage: NetworkImage(
                              'https://wallpapercave.com/wp/wp9463826.jpg'),
                        )),
                  )
                  //نهاية صورة البروفايل
                  //اسم العميل
                  ,
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top: 210),
                      height: 60,
                      width: double.infinity,
                      //color: Colors.yellowAccent,
                      child: Center(
                        child: Column(
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: 'Nezuko Kamado',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 30,
                                      color: Colors.black),
                                ),
                              ]),
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Tanjiro\'s sister',
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //بيانات عن عدد المتابعين وكده..............................
            Container(
              color: Colors.grey[300],
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /* Text('hallo'),
                  Text('hallo'),
                  Text('hallo'),*/
                  //followers
                  Container(
                    // color: Colors.blue,
                    height: 60,
                    width: 100,
                    child: Column(
                      children: [
                        Text.rich(
                          TextSpan(
                            text: '173',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Followers',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //posts
                  Container(
                    // color: Colors.blue,
                    height: 60,
                    width: 100,
                    child: Column(
                      children: [
                        Text.rich(
                          TextSpan(
                            text: '24',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Posts',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //scores
                  Container(
                    // color: Colors.blue,
                    height: 60,
                    width: 100,
                    child: Column(
                      children: [
                        Text.rich(
                          TextSpan(
                            text: '450',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Scores',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //نهاية بيانات عدد المتابعين والبوستيز
            //معلومات عن العميل او المستخدم يعني
            Container(
              // color: Colors.blue,
              height: 210,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    //color: Colors.green,
                    height: 140,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 6.0, right: 1.0),
                      child: Text.rich(
                        TextSpan(
                          text:
                          '\t\t\t\t"hi, my name is Nezuko, i am Tanjiro\'s sister. We strive to become demon slayers\t\t  after slaughtering our family and turning them into demons.\n if you want to see our adventure, please follow us and leave a message." ',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.orange,
                    height: 40,
                    width: double.infinity,
                    child: const Divider(
                      color: Colors.grey,
                      height: 30,
                      thickness: 3,
                      indent: 50,
                      endIndent: 50,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //color: Colors.pink,
                      height: 50,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text.rich(
                          TextSpan(
                            text: 'Get in touch with Nezuko,',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //نهاية معلومات عن المستخدم
            //ازار المتابعه والتواصل مع المستخدم
            Container(
              // color: Colors.red,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.green,
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black54,
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontStyle: FontStyle.normal),
                        side: BorderSide(color:  Colors.black54, width: 2),
                      ),
                      child: Text(
                        'Follow',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    //color: Colors.grey[700],
                  ),
                  Container(
                    color: Colors.green,
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black87,
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontStyle: FontStyle.normal),
                        side: BorderSide(color:  Colors.black87, width: 2),
                      ),
                      child: Text(
                        'Message',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
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
