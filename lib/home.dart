import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class home extends StatelessWidget {

  bar(Color col,String text,) {
    return Container(
      height:30,
      width: 75,
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
    return Card( margin: EdgeInsets.symmetric(vertical:10,horizontal: 20.0,),
        child: Column(
          children: [
            Container(
              width: 300.0,
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
          height:250,width: 300,
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
              width: 300.0,
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
            Container(height: 230,
              width: 900,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent[400],
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
              ),
            child:Column(
               children:[
                 Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding:
                    const EdgeInsets.only(top: 15.0, right: 10, bottom: 35),
                    child: Image.asset(
                      'images/foodlogo.png',
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),),
             Container(
               height: 100.0,
               width: 400.0,
             child:ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem('DRINK', 'images/soda.png',),
                _buildListItem('PIZZA', 'images/pizza.png', ),
                _buildListItem('BURGER', 'images/hamburger.png'),
                _buildListItem('SANDWICH', 'images/sandwich.png'),
                _buildListItem('DONUT', 'images/donut.png'),
                _buildListItem('SALAD', 'images/salad.png'),
                _buildListItem('COFFEE', 'images/coffee.png'),
                _buildListItem('NOODLES', 'images/noodles.png'),
                _buildListItem('CAKE', 'images/cake.png'),
                _buildListItem('PIE', 'images/pie.png'),
              ],
            ),)
            ]),),
            Container(
              height: 60,
              child:ListView(scrollDirection: Axis.horizontal,
                children:[
                 bar(Colors.pink,'CAKE'),
                 bar(Colors.deepPurple,'PIE'),
                 bar(Colors.lightBlue,'COFFEE'),
                 bar(Colors.blueAccent,'CANNOLI'),
                  bar(Colors.orange,'MUFFIN'),
                  bar(Colors.brown,'BROWNIE'),
                  bar(Colors.redAccent,'HOT-DOG'),
                  bar(Colors.indigo,'PASTRY'),
             ] ),),
            Padding(padding: const EdgeInsets.only(left:20, top:10),
            child:Align(
              alignment: Alignment.topLeft,
            child:Text('Most Popular',
            style: TextStyle(fontSize: 20, color: Colors.black,
                fontWeight: FontWeight.bold, letterSpacing: 1.5,),
            ),),
            ),
            card('chef','Smith Williams' ,'piz','Pizza Margherita',),
            card('fem','Martha Rogers','bg','A Special Treat'),
            card('man1', 'Steve Robbins', 'd', 'Yummy Donut'),
            card('fem','Martha Rogers','sand','Grilled Sandwiches'),
          ],),
    ),)
);
  }
}
_buildListItem(String foodName, String imgPath,) {
  return Container(
      child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Hero(
                      tag: foodName,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0,),
                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Center(
                              child: Image.asset(imgPath,
                                  height: 40.0, width: 50.0)))),
                  SizedBox(height: 5.0, width:10),
                  Text(
                    foodName,
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.white,
                    fontWeight: FontWeight.bold),
                  ),
                ],
              ));
}

