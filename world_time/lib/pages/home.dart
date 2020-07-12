import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    // print("arey");
    print(data);
    String bgImg = data['isDayTime'] ? 'day.png' : 'night.png';
    // String color = data['isDayTime'] ? Colors.blue : Colors.indigo;

    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: data['isDayTime'] ? Colors.blue : Colors.indigo[700],
          title: new Text("World Time App....."),
        ),
        body: new SafeArea(
          child: new Container(
            decoration: new BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/$bgImg'),
              fit: BoxFit.cover,
            )),
            child: new Padding(
                padding: EdgeInsets.fromLTRB(0, 120.0, 0, 0),
                child: new Column(
                  children: <Widget>[
                    RaisedButton.icon(
                      onPressed: () async {
                        dynamic result =
                            await Navigator.pushNamed(context, '/location');
                        setState(() {
                          data = {
                            'time': result['time'],
                            'location': result['location'],
                            'isDayTime': result['isDayTime'],
                            'flag': result['flag'],
                          };
                        });
                      },
                      icon: new Icon(
                        Icons.location_searching,
                        color: Colors.black,
                      ),
                      label: new Text(
                        'Edit Location',
                        style: new TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    new SizedBox(
                      height: 20.0,
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          data['location'],
                          style: new TextStyle(
                            fontSize: 28.0,
                            letterSpacing: 2.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    new SizedBox(
                      height: 20.0,
                    ),
                    new Text(
                      data['time'],
                      style: new TextStyle(fontSize: 67.0, color: Colors.white),
                    )
                  ],
                )),
          ),
        ));
  }
}
