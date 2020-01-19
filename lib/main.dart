import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Page Selector",
      theme:ThemeData(
        primaryColor: Colors.red,
      ),
      home: Home(),
    );
  }
}