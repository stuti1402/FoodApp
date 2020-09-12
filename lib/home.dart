import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  names(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
    child:Text("$text",
          style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold)),
    );
  }

  menu(String Img) {
    return CircleAvatar(
      maxRadius: 33,
      child: Image.asset("images/$Img.png", height: 45),
      backgroundColor: Colors.white,
    );
  }
  bar(String text) {
    return Container(
      height:30,
      width: 90,
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.pinkAccent
      ),
      child:Center(
    child:Text("$text",
          style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold)),
      ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: <Widget>[
        Container(
          height: 250,
          width: 392.5,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent[400],
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 35.0, right: 10, bottom: 35),
                  child: Image.asset(
                    'images/foodlogo.png',
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  menu('soda'),
                  menu('pizza'),
                  menu('hamburger'),
                  menu('sandwich'),
                  menu('ice-cream'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: names('SODA'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: names('PIZZA'),
                  ),
                  names('BURGER'),
                  names('SANDWICH'),
                  names('ICE CREAM'),
                ],
              ),
            ],
          ),
        ),
      Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            bar('CAKE'),
            bar('PIE'),
            bar('ICE-CREAM'),
            bar('CANNOLI'),
      ],),
      ]),
    );
  }
}
