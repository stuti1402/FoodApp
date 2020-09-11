import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          children:<Widget>[
        Container(
          height: 200,
      width: 500,
      decoration: BoxDecoration(
      color: Colors.deepPurpleAccent[400],
       borderRadius: const BorderRadius.only(bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
      ),
      child:Align(
        alignment: Alignment.topRight,
      child:Padding(
      padding: const EdgeInsets.only(bottom:25.0, top: 40),
      child:Image.asset(
        'images/foodlogo.png',
        height: 50,
        fit: BoxFit.contain,
      ),),
    ),
          ),
          ]
      )
    );
  }
}