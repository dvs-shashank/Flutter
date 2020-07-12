import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'dart:convert';
import '../services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // String time = "loading";
  void setupWorldTime() async {
    WorldTime wt = WorldTime(
        location: 'Berlin', flag: 'germany.jpeg', url: 'Europe/Berlin');
    await wt.getTime();
    // print(wt.location.toString() + "I am inside loading daery");
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': wt.location,
      'flag': wt.flag,
      'time': wt.time,
      'isDayTime': wt.isDayTime
    });
    // // setState(() {
    //   time = wt.time;
    // });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue[900],
      body: new Center(
        child: new SpinKitPouringHourglass(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
