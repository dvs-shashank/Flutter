import 'package:flutter/material.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Icon(Icons.accessibility, size: 150.0, color: Colors.brown),
      ),
    );
  }
}
