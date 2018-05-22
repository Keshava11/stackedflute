import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: new Stack(
        children: <Widget>[
          new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                "images/pepsi.png",
                width: 50.0,
                height: 50.0,
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Rockyy",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 20.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Always Android",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 14.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
