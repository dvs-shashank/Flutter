import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'json.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode) exit(1);
  };
  runApp(new Lists());
}

class Lists extends StatefulWidget {
  @override
  _ListsState createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  List<Quote> quotes = [
    new Quote(
        author: "Hello", quote: "Hey there Here I am trying to render lists"),
    new Quote(
        author: "Hello", quote: "Hey there Here I am trying to render lists"),
    new Quote(
        author: "Hello", quote: "Hey there Here I am trying to render lists"),
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey,
      appBar: new AppBar(
        title: new Text("Lists rendering"),
        backgroundColor: Colors.orange,
      ),
      body: new Column(
        children: quotes.map((e) => new Text('${e.author}')).toList(),
      ),
    );
  }
}
