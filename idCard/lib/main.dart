import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Test(),
  ));
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: new AppBar(
        title: new Text(
          "id-Card",
          style: new TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          this.setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      body: new Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Center(
              child: new CircleAvatar(
                backgroundImage: AssetImage('assets/pro.jpeg'),
                radius: 40.0,
              ),
            ),
            new Divider(
              height: 90.0,
              color: Colors.brown,
            ),
            new Text(
              "Name",
              style: TextStyle(color: Colors.black, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            new Text(
              "DVS SHASHANK",
              style: TextStyle(
                  color: Colors.brown,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            new Text(
              "CURRENT LEVL",
              style: TextStyle(color: Colors.black, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            new Text(
              '$counter',
              style: TextStyle(
                  color: Colors.brown,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            new SizedBox(
              height: 30.0,
            ),
            new Row(
              children: <Widget>[
                new Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                new SizedBox(
                  width: 10.0,
                ),
                new Text(
                  "dvs.shashannk@gmail.com",
                  style: new TextStyle(
                      color: Colors.brown,
                      letterSpacing: 1.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
