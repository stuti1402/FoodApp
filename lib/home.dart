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
  bar(Color col,String text,) {
    return Container(
      height:30,
      width: 90,
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: col,
      ),
      child:Center(
        child:Text("$text",
            style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),);
  }
  card(String Image,String text,  String img,String txt,)
  {
    return Card( margin: EdgeInsets.symmetric(vertical:10,horizontal: 60.0,),
        child: Column(
          children: [
            Container(
              width: 280.0,
              height:60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,
                width: 3),
              ),
              child:Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent,
                            image: DecorationImage(
                                image: AssetImage('images/$Image.jpg',),
                                fit: BoxFit.fill)
                        ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      child:Text('$text',
                        style: TextStyle(color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),),),
                  Padding(
                    padding: const EdgeInsets.only(left: 38),
                    child:Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30.0,
                        ),),
                        Text('160'),
                    ],),
                  ] ),),
            ),
            Container(
          height:250,width: 280,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,
            width:3),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("images/$img.jpg"),
            ),
          ),
        ),
            Container(
              width: 280.0,
              height:50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,
                    width: 3),
              ),
                child:Text("$txt\n⭐⭐⭐⭐⭐"),),
    ]),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(scrollDirection:Axis.vertical,
        child: Column(
          children: <Widget>[
        Container(
          height: 250,
          width: 900,
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
                  children:<Widget> [
                    menu('soda'),
                    menu('pizza'),
                    menu('hamburger'),
                    menu('sandwich'),
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
                ],
              ),
            ],
          ),
        ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                bar(Colors.pink,'CAKE'),
                bar(Colors.deepPurple,'PIE'),
                bar(Colors.lightBlue,'ICE-CREAM'),
                bar(Colors.blueAccent,'CANNOLI'),
              ],),
            Padding(padding: const EdgeInsets.all(10),
            child:Align(
              alignment: Alignment.topLeft,
            child:Text('Most Popular',
            style: TextStyle(fontSize: 20, color: Colors.black),),),),
            card('chef','Olea Powers' ,'piz','Pizza Margherita',),
            card('chef', 'Olea Powers', 'd', 'Donut')
          ],),
    ),),
);
  }
}
