import 'package:flutter_test_app/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{

  static const routeName = "/loginPage";
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

 void validateInput()
  {
    FormState form = this.formKey.currentState;
    ScaffoldState scaffold = this.scaffoldKey.currentState;

    SnackBar message = SnackBar(content: Text('Semua data sudah tervalidasi'),);
    if(form.validate()){
      scaffold.showSnackBar(message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(50.0),
        child: Form(
          key: formKey,
          child: Column(children:<Widget>[
            Image.asset(
              "images/yugo.jpg",
              width: 150.0,
              height: 150.0,
            ),
            Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      Text(
        "Log In",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 20.0),
      ),
            
            Container(height: 10.0),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorPalette.underlineTextField,
                    width: 1.5,
                    ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 3.0,
                  ),
                ),
                hintText: "Email Adress",
                hintStyle: TextStyle(color: ColorPalette.hintColor),
              ),
              style: TextStyle(color: Colors.white),
              autofocus: false, 
              keyboardType: TextInputType.text ,
              validator:(String value){
                if(value.isEmpty){
                  return 'Email wajib diisi';
                }
              }, 

            ),
            Container(height: 10.0),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorPalette.underlineTextField,
                    width: 1.5,
                    ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 3.0,
                  ),
                ),
                hintText: "Password",
                hintStyle: TextStyle(color: ColorPalette.hintColor),
              ),
              style: TextStyle(color: Colors.white),
              obscureText: true,
              autofocus: false,
              keyboardType: TextInputType.text ,
              validator:(String value){
                if(value.isEmpty){
                  return 'Password wajib diisi';
                }
              }, 

            ),
            Container(height: 10.0),
            RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              padding: const EdgeInsets.all(0.0),
              child: Ink(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
                child: Container(
                  constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                  alignment: Alignment.center,
                  child: const Text(
                    'LOGIN',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              onPressed: validateInput,
            )
          ]),
        ),
      ),
    );
  }
}
