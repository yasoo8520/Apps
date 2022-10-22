import 'package:flutter/material.dart';
import 'clock.dart';
class MainPage  extends StatefulWidget{
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return  _MainPageState();

  }
}

class _MainPageState extends State<MainPage>{
  int _itemIndex=1;
  var _buttonimage ='assets/icons/world.png';
  double _imgwith =40;
  List<Widget> pages= <Widget>[
    Container(color: Colors.blueGrey,),
    ClockCard(),
    Container(color: Colors.green,),
    Container(color: Colors.yellow,),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert)),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          //selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: _itemIndex,
          onTap: onItemTabed,
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label:'alarm',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.watch_later_outlined),
              label: 'clock'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.watch_rounded),
              label: 'stopwatch'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.timer),
              label: 'timer'
            ),

          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              pages[_itemIndex],
              Positioned(
                top: MediaQuery.of(context).size.height /1.4,
                left:MediaQuery.of(context).size.height /5 ,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    fixedSize: Size(50, 50)
                  ),
                    onPressed: (){},
                    child: buttonImage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void onItemTabed(index){
    setState(() {
      _itemIndex =index;
    });
  }

  Widget buttonImage(){
    switch(_itemIndex){
      case 0:
        _buttonimage = 'assets/icons/plus.png';
        _imgwith =25;
        break;
      case 1:
        _buttonimage ='assets/icons/world.png';
        _imgwith =40;
        break;
      case 2:
        _buttonimage ='assets/icons/play.png';
        _imgwith =30;
        break;
      case 3:
        _buttonimage ='assets/icons/play.png';
        _imgwith =30;
        break;
    }
    return Image(
      image:AssetImage(_buttonimage),
      color: Colors.blue[200],
      height: _imgwith,
      width: _imgwith,
    );
  }
}