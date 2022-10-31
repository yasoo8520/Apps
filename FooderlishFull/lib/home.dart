import 'package:flutter/material.dart';
import 'fooderlish_theme.dart';
import 'models/screens/explore_screen.dart';
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return  HomePageState();
  }
}
class HomePageState extends State<HomePage>{
  int _botnavIndex =0;
  List <Widget> pages =<Widget>[
    const ExploreScreen(),
    Text('Recipes'),
    Text('To Buy'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FooderLish'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _botnavIndex,
        onTap: ontipBotobNav,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: 'To Buy',
          ),
        ],
      ),
      body: Center(
        child: pages[_botnavIndex],
      ),
    );
  }
void ontipBotobNav(int index){
    setState(() {
      _botnavIndex =index;
    });
}
}