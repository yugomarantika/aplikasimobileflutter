import 'package:flutter/material.dart';
import 'package:flutter_test_app/constants.dart';

class ButtonPage extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(50.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(children: <Widget>[
                _titleDescription(),
                _buildButton(context),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}

Widget _titleDescription(){
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 50.0),
      ),
      Text(
        "Excited?!",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 35.0),
      ),
      Text(
        "You should be!!",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 35.0),
      ),
      Text(
        "Sign in if you already have an account with us",
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.white),
      ),
    ],
  );
}

Widget _buildButton(BuildContext context){
  return Column(
    children: <Widget>[
      Padding(padding: EdgeInsets.only(top:16.0),
    ),
    InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical:8.0),
        width: double.infinity,
        child: Text(
          'Sign In',
          style: TextStyle(color: ColorPalette.primaryColor),
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          ),
      ),
      onTap: (){
        Navigator.of(context).pushNamed("/loginPage");
      },
    ),
    Padding(
      padding: EdgeInsets.only(top:16.0),
    ),
    Text(
      'or sign up if you are new!',
      style: TextStyle(
        color: Colors.white,
        fontSize: 12.0,
      ),
    ),
    Padding(padding: EdgeInsets.only(top:16.0),
    ),
    InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical:8.0),
        width: double.infinity,
        child: Text(
          'Sign Up',
          style: TextStyle(color: ColorPalette.primaryColor),
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          ),
      ),
      onTap: (){

      },
    ),
    ],
  );
}