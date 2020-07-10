import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Homepage(),
    routes: <String, WidgetBuilder>{
      // "/": (BuildContext context) => new Homepage(),
      "/secondpage": (BuildContext context) => new Secondpage()
    },
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("home"),
        backgroundColor: Colors.deepOrange,
      ),
      body: new Container(
          child: new Center(
              child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.favorite, color: Colors.deepOrange),
            iconSize: 70.0,
            onPressed: () {
              changePage(context);
            },
          ),
          new Text("Home")
        ],
      ))),
    );
  }

  void changePage(BuildContext context) {
    Navigator.of(context).pushNamed("/secondpage");
  }
}

class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Page"),
        backgroundColor: Colors.deepOrange,
      ),
      body: new Container(
          child: new Center(
              child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.home, color: Colors.red),
            iconSize: 70.0,
            onPressed: () {
              changePage(context);
            },
          ),
          new Text("Second page")
        ],
      ))),
    );
  }

  void changePage(BuildContext context) {
    Navigator.of(context).pushNamed("/");
  }
}
