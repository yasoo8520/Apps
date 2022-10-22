import 'package:flutter/material.dart';
import 'theme.dart';
import 'analog_clock.dart';
import 'date_custom.dart';
class ClockCard extends StatefulWidget{
  @override
  State<ClockCard> createState() => _ClockCardState();

}

class _ClockCardState extends State<ClockCard>{
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.deepPurpleAccent,
      height: 330,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                  child: Text('Clock',style:AlarmTheme.lightText.headline1,))
          ),
          CustomAnalogClock(),
          Positioned(
            top: (MediaQuery.of(context).size.height)/2.8,
            left: (MediaQuery.of(context).size.width)/2.5,
            child: Center(
              child: CustomDate(),
            ),
          ),
        ],
      ),
    );
  }
}