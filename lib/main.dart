import 'package:flutter/material.dart';
import 'package:task_2_stuti/home.dart';
import 'package:task_2_stuti/login.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food app',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: home(),
    );
  }
}