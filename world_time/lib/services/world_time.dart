import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;
  bool isDayTime;

  WorldTime({this.location, this.time, this.flag, this.url});

  Future<void> getTime() async {
    try {
      String offset;
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      print(data['utc_offset']);
      String datetime = data['datetime'];
      int check = int.parse(data['utc_offset'][4]);
      if (check != 0) {
        offset = data['utc_offset'].substring(1, 3);
      } else {
        offset = data['utc_offset'].substring(1, 3);
      }
      print(check);
      DateTime now = DateTime.parse(datetime);
      now = now.add(new Duration(hours: int.parse(offset)));
      this.time = DateFormat.jm().format(now);
      isDayTime = (now.hour > 6 && now.hour < 19 ? true : false);
      // print("neat ga kanpinche date" + this.time);
    } catch (e) {
      print("error is" + e);
      this.time = "Could not get the data";
    }

    // print(now);

    //Simulate a network req usig delay
  }
}
