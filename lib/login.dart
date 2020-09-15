import 'package:flutter/material.dart';
import 'package:task_2_stuti/home.dart';

class login extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:<Widget>[
         Padding(
      padding: const EdgeInsets.only(bottom:25.0, top: 60),
        child:Image.asset(
          'images/foodlogo.png',
          height: 90,
          fit: BoxFit.contain,
        ),),

          Align(
            alignment: Alignment.centerLeft,
          child:Padding(
            padding: const EdgeInsets.all(40.0),
           child:Text('Sign Up Free Account',
              style:TextStyle(
                  fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 1.5,
              ),
               textAlign: TextAlign.left,
          ), ),
          ),
          Container(
            height:50,
            width: 600,
            margin: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
            ),
           child:Padding(
          padding: const EdgeInsets.all(12),
             child: Text(
                "UserName",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize:20,color: Colors.grey,
                    letterSpacing: 1.5,
                fontWeight: FontWeight.bold),
              ),
            ),),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height:50,
            width: 600,
            margin: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
            ),
            child:Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "Email",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize:20,color: Colors.grey,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold),
              ),
            ),),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height:50,
            width: 600,
            margin: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
            ),
            child:Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "Password",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize:20,color: Colors.grey,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold),
              ),
            ),),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height:50,
            width: 600,
            margin: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
            ),
            child:Padding(
              padding: const EdgeInsets.all(13),
              child: Text(
                "Phone",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize:20,color: Colors.grey,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold),
              ),
            ),),
          SizedBox(
            height: 10.0,
          ),
          SizedBox(
            width: 400,
            child:Container(
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.deepPurpleAccent[700],
              textColor: Colors.white,
              child: Text(
                'Sign UP',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> home(),
                  )
                );
              },
            ),
          ),
          ),
        ]
      )
    );
  }
}