import 'package:flutter/material.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Home'),
    ),

    body: Center(child: Text('Home',style: TextStyle(fontSize: 60),),),
  ); 
}