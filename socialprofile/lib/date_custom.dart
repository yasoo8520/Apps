import 'package:flutter/material.dart';
import 'theme.dart';
class CustomDate extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CustomDateState();
  }

}

class _CustomDateState  extends State<CustomDate>{
  final DateTime now = DateTime.now().add(Duration(hours: -5, minutes: 00)).toUtc();
  var _month;
  var _day;
  var _year;
  var _dayname;
  @override
  Widget build(BuildContext context) {
    _setMonth();
    return Container(
      //color: Colors.blueGrey,
      child: Column(
        children: [
          Text(
            '${_dayname}',
            style:AlarmTheme.lightText.headline4,
          ),
          Text(
            '${_month} ${_day}, ${_year}',
            style:AlarmTheme.lightText.bodyText2,
          )
        ],
      ),
    );
  }
  void _setMonth (){
    _day = now.day;
    _year = now.year;
    switch(now.weekday){
      case DateTime.saturday:
        _dayname='Saturday';
        break;
      case DateTime.sunday:
        _dayname='Sunday';
        break;
      case DateTime.monday:
        _dayname='Monday';
        break;
      case DateTime.tuesday:
        _dayname='Tuesday';
        break;
      case DateTime.wednesday:
        _dayname='Wednesday';
        break;
      case DateTime.thursday:
        _dayname='Thursday';
        break;
      case DateTime.friday:
        _dayname='Friday';
        break;
      default:
        _dayname = 'null day';
    }
    switch (now.month){
      case DateTime.january:
        _month = 'Jan';
      break;
      case DateTime.february:
        _month = 'Feb';
        break;
      case DateTime.march:
        _month = 'March';
        break;
      case DateTime.april:
        _month = 'April';
        break;
      case DateTime.may:
        _month = 'May';
        break;
      case DateTime.june:
        _month = 'June';
        break;
      case DateTime.july:
        _month = 'July';
        break;
      case DateTime.august:
        _month = 'Aug';
        break;
      case DateTime.september:
        _month = 'Sept';
        break;
      case DateTime.october:
        _month = 'Oct';
        break;
      case DateTime.november:
        _month = 'Nov';
        break;
      case DateTime.december:
        _month = 'Dec';
        break;
      default:
        _dayname = 'nullmonth';
    }
  }
}