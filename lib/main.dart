import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:carousel/carousel.dart';
import 'package:stackedflute/nav/splash.dart';
import 'package:stackedflute/nav/home.dart';
import 'package:stackedflute/nav/login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stacked Flute',
      theme: new ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blueGrey,

      ),
      home: Splash(),
      //new MyTestView()
      //new MyHomePage(title: 'Stacked Flute'),
      routes: <String, WidgetBuilder>{
//        "/": (BuildContext context) => Splash(),
        "/home": (BuildContext context) => Home(),
        "/login": (BuildContext context) => Login(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selection = 0; // 0,1,2,3

  void _updateSelection(int iSelection) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _selection = iSelection;
    });
  }

  // This method creates a dialog
  Widget myDialog(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Invalid Username/Password"),
              new Text("Please verify your login credentials"),
              new RaisedButton(
                  child: new Text("Ok"),
                  onPressed: () {
                    Navigator.pop(
                        context); //Error : Only static members can be accessed in initializers
                  }),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),

      body: MyTopMenu(),
//      body: new Container(
//        child: MyStackedImages(),
//      ),

      // let it be Added there
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          _updateSelection(1);

          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                    title: Text(
                      "NOTICE",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    content: new Column(
                      // For a column, main axis is vertical. So do it as required
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,

                      // It will deals with how to align your content vertically
//                      verticalDirection: VerticalDirection.down,

                      children: <Widget>[
                        new Text(
                          "Regarding new Android device.",
                          style: TextStyle(
                              color: Colors.grey,
                              fontStyle: FontStyle.normal,
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal),
                        ),
                        new Divider(
                          color: Colors.greenAccent,
                          height: 10.0,
                        ),
                        new Text(
                          "This is to inform all of you that we will be getting a new Android device soon. "
                              "So anyone who is interested in exploring it at the first place, should subscribe "
                              "by entering their email id in the follwing box.",
                          style: TextStyle(
                              color: Colors.grey,
                              fontStyle: FontStyle.normal,
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal),
                        ),
                        new TextFormField(
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                          ),
//                          maxLines: 2,
                          textAlign: TextAlign.start,
                          maxLength: 100,
//                          initialValue: "Email Id",
                          obscureText: false,
//                          controller: TextEditingController(text: "Hella"),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              contentPadding: new EdgeInsets.all(4.0),
                              hintText: "Enter email ID",
                              hintStyle: TextStyle(
                                  color: Colors.lightGreenAccent,
                                  fontSize: 12.0),
                              labelText: "Email Address",
                              labelStyle: TextStyle(color: Colors.grey),
                              errorText: "Invalid Email Id",
                              errorStyle: TextStyle(color: Colors.red),
                              border: OutlineInputBorder()),
                          keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (str) {
                            print("Print the submitted text : " + str);
                          },
                          onSaved: (str) {
                            print("Print the entered text : " + str);
                          },
                        ),
                        new RaisedButton(
                          onPressed: () {
                            print("Hello Raised button is clicked");
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ));
        },
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// This is the top menu
class MyTopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Text(
            'ALL MANAs',
            style: Theme.of(context).textTheme.display1,
          ),
          new Divider(
            height: 40.0,
            color: Colors.green,
          ),
          new IconButton(
            icon: new Icon(Icons.airplay),
            onPressed: () {
              // Launch a new screen
            },
            tooltip: "Navigation",
          ),
          new IconButton(
            icon: new Icon(Icons.format_paint),
            onPressed: () {
              // Launch a new screen
            },
            tooltip: "CustomView",
          ),
          new IconButton(
            icon: new Icon(Icons.data_usage),
            onPressed: () {
              // Launch a new screen
            },
            tooltip: "Database",
          ),
          new IconButton(
            icon: new Icon(Icons.settings_remote),
            onPressed: () {
              // Launch a new screen
            },
            tooltip: "HttpConnection",
          ),
          new ListElement(
            mId: "ID1",
            name: "Ravi",
            text: "Hejekje",
            animationController: AnimationController(
                vsync: MyTickerProvider(),
                duration: const Duration(milliseconds: 800)),
          ),
        ],
      ),
    );
  }
}

/**
 * This demo uses a library called [carousel: ^0.1.0]
 */
class MyCarouselDemo extends StatelessWidget {
  Widget testBGCarousel = new Container(
    child: Carousel(
      children: <Widget>[
        Image.asset(
          "images/ali_1.jpeg",
          width: 200.0,
          height: 200.0,
        ),
        Image.asset(
          "images/ali_2.jpeg",
          width: 200.0,
          height: 200.0,
        ),
        Image.asset(
          "images/ali_3.jpeg",
          width: 200.0,
          height: 200.0,
        ),
      ].map((bgImg) => bgImg).toList(),
      displayDuration: const Duration(seconds: 1),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text(
          "Carousel",
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: new Stack(
        children: <Widget>[
          new PageView(
            children: <Widget>[testBGCarousel],
          ),
          new ListView(
            children: <Widget>[Text("random text on top of carousel")],
          )
        ],
      ),
    );
  }
}

class MyTestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.deepPurpleAccent,
        child: new Center(
//            mainAxisAlignment: MainAxisAlignment.center,
//            crossAxisAlignment: CrossAxisAlignment.center,
            widthFactor: 1.0,
            heightFactor: 0.5,
            child:
//          <Widget>[
                new GridView.count(
              crossAxisCount: 6,
              children: new List.generate(4 * 6, (index) {
                return new Center(
                  child: new CellWidget(),
                );
              }),
            )
//            ]
            ));
  }
}

class CellWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 100.0,
      height: 100.0,
      padding: new EdgeInsets.all(10.0),
      color: Colors.redAccent,
      child: Text(
        "Random",
        style: TextStyle(
          color: Colors.blue,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}

// Images overlapping with in a Stack widget
class MyStackedImages extends StatelessWidget {
  Image shadowImage = Image.asset(
    'images/ali_1.jpeg',
    height: 200.0,
    width: 200.0,
  );
  Image initialImage = Image.asset(
    'images/ali_2.jpeg',
    height: 200.0,
    width: 200.0,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build\
//    return new Image(image: AssetImage("images/ali_1.jpeg"), height: 200.0, width: 200.0,);
//    return new Image.asset("images/ali_1.jpeg", height: 100.0, width: 100.0, fit: BoxFit.fill,);

    return new GestureDetector(
      onTapDown: (x) => print('onTapDown'),
      child: new Stack(
        overflow: Overflow.visible,
        children: [
// FIXME : Tap on image below not working with following
//          new Positioned(
//            child: new Image.asset("images/ali_1.jpeg", height: 200.0, width: 200.0,),
//            top: 50.0,
//          ),
//          new Positioned(
//            child: new Image.asset("images/ali_2.jpeg", height: 200.0, width: 200.0,), //initialImage,
//          ),

// FIXME : Tap on image below working with following
          new Padding(
              padding: const EdgeInsets.only(top: 50.0), child: shadowImage),
          new Positioned(
            child: initialImage,
          ),
        ],
      ),
    );
  }
}

class ListElement extends StatelessWidget {
  ListElement({this.text, this.name, this.mId, this.animationController});

  final String text;
  final String name;
  final String mId;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new DrugProfile(1)));
        },
        onLongPress: () {
          //HERE I NEED TO SELECT MULTIPLE ROWS IF IT FIRES
          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                    title: Text("tyitlr"),
                    content: Text("content"),
                  ));
        },
        child: new Container(
//            sizeFactor: new CurvedAnimation(
//                parent: animationController,
//                curve: Curves.easeOut),
//            axisAlignment: 0.0,
            child: new Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                margin: const EdgeInsets.only(right: 16.0),
                child: new CircleAvatar(child: new Text(name[0].toUpperCase())),
              ),
              new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(name, style: Theme.of(context).textTheme.subhead),
                    new Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: new Text(
                        text,
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}

class DrugProfile extends StatelessWidget {
  DrugProfile(this.drumId);

  final drumId;

  @override
  Widget build(BuildContext context) {
    return new Text("DrugProfile");
  }
}

class MyTickerProvider extends TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}
