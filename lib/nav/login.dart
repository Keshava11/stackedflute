import "package:flutter/material.dart";

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Pepsi",
          style: TextStyle(
              color: Colors.redAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextFormField(
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.start,
              maxLength: 100,
              obscureText: false,
              decoration: buildInputDecoration(
                  Icons.email,
                  4.0,
                  "Enter Email ID",
                  "Email",
                  "Invalid Email ID",
                  OutlineInputBorder()),
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (str) {
                print("Print the email text : " + str);
              },
              onSaved: (str) {
                print("Print the email text : " + str);
              }),
          TextFormField(
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.start,
              maxLength: 100,
              obscureText: false,
              decoration: buildInputDecoration(
                  Icons.vpn_key,
                  4.0,
                  "Enter Password",
                  "Password",
                  "Invalid Password",
                  OutlineInputBorder()),
              keyboardType: TextInputType.text,
              onFieldSubmitted: (str) {
                print("Print the submitted text : " + str);
              },
              onSaved: (str) {
                print("Print the entered text : " + str);
              }),
          RaisedButton(
            onPressed: () {
              print("Raised button is pressed");
              // Move to Home screen
              Navigator.pushNamed(context, "/home");
            },
            child: Text(
              "LOGIN",
              style:
                  TextStyle(color: Colors.red, fontWeight: FontWeight.normal),
            ),
            padding: new EdgeInsets.all(10.0),
          )
        ],
      ),
    );
  }

  TextStyle _hintStyle =
      TextStyle(color: Colors.lightGreenAccent, fontSize: 12.0);
  TextStyle _labelStyle = TextStyle(color: Colors.grey);
  TextStyle _errorStyle = TextStyle(color: Colors.red);

  InputDecoration buildInputDecoration(
      IconData iconData,
      double padding,
      String hintString,
      String labelString,
      String errorString,
      InputBorder inputBorder) {
    return InputDecoration(
        prefixIcon: Icon(iconData),
        //Icon(Icons.vpn_key),
        contentPadding: new EdgeInsets.all(padding),
        hintText: hintString,
        hintStyle: _hintStyle,
        labelText: labelString,
        labelStyle: _labelStyle,
        errorText: errorString,
        errorStyle: _errorStyle,
        border: inputBorder);
  }
}
