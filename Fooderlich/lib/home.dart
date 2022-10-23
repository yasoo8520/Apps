import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';
class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }

}
class _HomePageState  extends State<HomePage>{
  int _itemIndex =0;
  List <Widget> Pages = <Widget>[
    const Card1(),
    const Card2(),
    const Card3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FooderLish',style: Theme.of(context).textTheme.headline1,),

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _itemIndex,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        onTap: _onItemTapped,
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card'
          ),
        ],
      ),
      body:Pages[_itemIndex],
    );
  }
  void _onItemTapped(int index){
    setState(() {
      _itemIndex = index;
    });
  }

}
