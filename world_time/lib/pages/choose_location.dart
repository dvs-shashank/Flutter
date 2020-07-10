import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey,
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("Choose location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Choose location screen'),
    );
  }
}
