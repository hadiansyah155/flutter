import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
          backgroundColor: Colors.yellow,
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
            backgroundColor: Colors.pinkAccent,
          ),
          body: Column(children: <Widget>[
            Text(
              'Hadiansyah',
              style: TextStyle(
                  fontSize: 24, fontFamily: "Times New Roman", height: 2.0),
            ),
            Container(
              height: 80,
              color: Colors.blueAccent,
              margin: EdgeInsets.all(10.0),
            ),
            Container(
              height: 80,
              color: Colors.pink[300],
              margin: EdgeInsets.all(10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                  margin: EdgeInsets.all(10.0),
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                  margin: EdgeInsets.all(10.0),
                ),
              ],
            )
          ])),
    );
  }
}
