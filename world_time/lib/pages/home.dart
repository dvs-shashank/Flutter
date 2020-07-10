import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Weather App....."),
      ),
      body: new SafeArea(
          child: new Column(
        children: <Widget>[
          FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: new Icon(Icons.location_searching),
              label: new Text('Edit Location'))
        ],
      )),
    );
  }
}
