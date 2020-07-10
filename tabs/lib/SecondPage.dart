import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Icon(Icons.local_pizza, size: 150.0, color: Colors.brown),
      ),
    );
  }
}
