import 'package:flutter/material.dart';

// Lets see how to use it
class MyFormField extends StatefulWidget {
//  style: TextStyle(
//  color: Colors.grey,
//  fontSize: 18.0,
//  ),
////                          maxLines: 2,
//  textAlign: TextAlign.start,
//  maxLength: 100,
////                          initialValue: "Email Id",
//  obscureText: false,
////                          controller: TextEditingController(text: "Hella"),
//  decoration: InputDecoration(
//  prefixIcon: Icon(Icons.email),
//  contentPadding: new EdgeInsets.all(4.0),
//  hintText: "Enter email ID",
//  hintStyle: TextStyle(
//  color: Colors.lightGreenAccent,
//  fontSize: 12.0),
//  labelText: "Email Address",
//  labelStyle: TextStyle(color: Colors.grey),
//  errorText: "Invalid Email Id",
//  errorStyle: TextStyle(color: Colors.red),
//  border: OutlineInputBorder()),
//  keyboardType: TextInputType.emailAddress,

  TextStyle textStyle;
  TextAlign textAlign;
  int maxLength;
  int maxLines;
  Decoration inputDecoration;
  TextInputType keypadInputType;


  @override
  State<StatefulWidget> createState() {
    return MyFormFieldState();
  }
}

class MyFormFieldState extends State<MyFormField> {
  @override
  Widget build(BuildContext context) {



    return new TextFormField();
  }
}
