import 'dart:async';
import "package:flutter/material.dart";

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void myCallBack() {
      // This works with popping current screen and launching new
      Navigator.pushReplacementNamed(context, "/login");
      // Removing current from the backStack
    }

    // Setup a timer for 6 secs
    Timer(const Duration(seconds: 6), () => myCallBack());

    final Widget splashScreenWidget = new Scaffold(
      backgroundColor: Colors.blue,
      body: new Center(
        child: new Align(
          alignment: Alignment.center,
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "images/pepsi.png",
                height: 200.0,
                width: 200.0,
              ),
              Text(
                "PEPSI App",
                style: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );

    return splashScreenWidget;
  }
}
