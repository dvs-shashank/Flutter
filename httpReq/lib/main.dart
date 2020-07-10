import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data;

  Future<String> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {
          // "key":"hi",
          "Accept": "application/json"
        });
    this.setState(() {
      data = json.decode(response.body);
    });
    print(data[0]["title"]);
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("List view"),
        ),
        body: new ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              child: new Text(data[index]["title"]),
            );
          },
          itemCount: data == null ? 0 : data.length,
        ));
  }
}
