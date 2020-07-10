import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyTextInput(),
  ));
}

class MyTextInput extends StatefulWidget {
  @override
  _MyTextInputState createState() => _MyTextInputState();
}

class _MyTextInputState extends State<MyTextInput> {
  String _result = "";
  final TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Input text"),
        backgroundColor: Colors.red,
      ),
      body: new Container(
          child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(hintText: "Enter your text here"),
              onSubmitted: (String str) {
                setState(() {
                  _result += str + "\n";
                });
                controller.text = "";
              },
              controller: controller,
            ),
            new Text(_result),
          ],
        ),
      )),
    );
  }
}
