import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;

  WorldTime({this.location, this.time, this.flag, this.url});

  Future<void> getTime() async {
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);
    print(data['utc_offset']);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    DateTime now = DateTime.parse(datetime);
    now = now.add(new Duration(hours: int.parse(offset)));
    this.time = now.toString();
    // print(now);

    //Simulate a network req usig delay
  }
}
