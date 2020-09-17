import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_2_stuti/home.dart';

class login extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _loginState createState()=>  _loginState();
    // TODO: implement createState
  }

class _loginState extends State<login>{
  bool autoValidate = false;
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  formField(String field, TextInputType ktype, TextEditingController ctrller,
      bool obscT) {
    return Container(
      height:44,
      width: 600,
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[200],
      ),
    child:Padding(
    padding: const EdgeInsets.all(12),
      child: TextFormField(
        controller: ctrller,
        validator: (value) => value.isEmpty ? '*Required' : null,
        autovalidate: autoValidate,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding:
          EdgeInsets.only(left: 15, bottom: 11, right: 15),
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            color: Colors.grey,
            fontSize: 18,
          ),
          hintText: '$field',
        ),
        keyboardType: ktype,
        obscureText: obscT,
      ),),
    );
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:<Widget>[
         Padding(
      padding: const EdgeInsets.only(bottom:25.0, top: 50),
        child:Image.asset(
          'images/foodlogo.png',
          height: 90,
          fit: BoxFit.contain,
        ),),

          Align(
            alignment: Alignment.centerLeft,
          child:Padding(
            padding: const EdgeInsets.all(30.0),
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
            child: Column(
              children: [
                formField('Username', TextInputType.text, usernameController, false),
                formField('Email', TextInputType.emailAddress, emailController, false),
                formField('Password', TextInputType.visiblePassword, passwordController, true),
                formField('Phone', TextInputType.phone, phoneController, false),
              ],
            ),
          ),

          SizedBox(
            width: 400,
            child:Container(
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
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
      if (usernameController.text.isEmpty) {
      setState(() {
      autoValidate = true;
      });
      return;
      }
      if (emailController.text.isEmpty) {
      setState(() {
      autoValidate = true;
      });
      return;
      }
      if (passwordController.text.isEmpty) {
      setState(() {
      autoValidate = true;
      });
      return;
      }
      if (phoneController.text.isEmpty) {
      setState(() {
      autoValidate = true;
      });
      return;
      }
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