import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'dart:convert';
import '../services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = "loading";
  void setupWorldTime() async {
    WorldTime wt = WorldTime(
        location: 'Berlin', flag: 'germany.jpeg', url: 'Europe/Berlin');
    await wt.getTime();
    print(wt.time);
    setState(() {
      time = wt.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: EdgeInsets.all(20.0),
        child: new Text(time),
      ),
    );
  }
}
