import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Batagor';
    // final title = 'Soto ';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hadiansyah'),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 270.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10.0),
                      color: Colors.yellow,
                      height: 270.0,
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/btgr.jpeg',
                            width: 110,
                          ),
                          Text(
                            title,
                            style: TextStyle(fontSize: 30, height: 2),
                          ),
                          Text("Batagor khas Singaparna"),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      color: Colors.red,
                      height: 270.0,
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/btgr.jpeg',
                            width: 110,
                          ),
                          Text(
                            title,
                            style: TextStyle(fontSize: 30, height: 2),
                          ),
                          Text("Batagor spesial ala ala "),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
