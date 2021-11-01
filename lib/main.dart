import 'package:flutter/material.dart';
import 'package:mohagyar19552011281/Menu/datepick.dart';
import 'package:mohagyar19552011281/Menu/home.dart';
import 'package:mohagyar19552011281/Menu/timepick.dart';


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //use MaterialApp() widget like this
      home: _MainPage() //create new widget class for this 'home' to 
                   // escape 'No MediaQuery widget found' error
    );
  }
}


class _MainPage extends StatefulWidget {
  @override
  __MainPageState createState() => __MainPageState();
}

class __MainPageState extends State<_MainPage> {
  int currentIndex = 0;
  final screens = [
    HomeApp(),
    Datepicker(),
    TimePick(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
    body: IndexedStack(
      index: currentIndex,
      children: screens,
    ),
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: currentIndex,
    onTap: (index)=> setState(() => currentIndex = index) ,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_rounded),
          label: 'Date',
          backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.timer),
          label: 'Time',
          backgroundColor: Colors.green,
          ),
      ],),
  );
}

