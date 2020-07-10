import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Icon(Icons.credit_card, size: 150.0, color: Colors.brown),
      ),
    );
  }
}
