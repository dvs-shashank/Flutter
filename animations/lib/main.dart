import 'package:flutter/material.dart';
import 'loader.dart';

void main() {
  runApp(new MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      body: new Center(
        child: new Loader(),
      ),
    );
  }
}
