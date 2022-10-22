import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
class CustomAnalogClock extends StatefulWidget{
  @override
  State<CustomAnalogClock> createState() {
    return _CustomAnalogClockState();
  }

}

class _CustomAnalogClockState extends State<CustomAnalogClock>{
  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now().toUtc();
      return Center(
      child: AnalogClock(
        width: 200,
        isLive: true,
        showSecondHand: true,
        datetime: dateTime,
        //showNumbers: true,
        showAllNumbers: true,
        hourHandColor:  Colors.green,
        showDigitalClock: false,
      ),
    );
  }
}