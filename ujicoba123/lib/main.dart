import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  ScrollController _controller;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row & Column"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: new Center(
                        child: new Text("Data Indonesia"),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: new Center(
                        child: new Text("Data Dunia"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.amber[200],
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ListView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ListItem(
                      warna: Colors.pink[100],
                      lebar: 100,
                    ),
                    ListItem(
                      warna: Colors.yellowAccent,
                      lebar: 100,
                    ),
                    ListItem(
                      warna: Colors.lightBlue,
                      lebar: 100,
                    ),
                    ListItem(
                      warna: Colors.red,
                      lebar: 100,
                    ),
                    ListItem(
                      warna: Colors.blueGrey,
                      lebar: 100,
                    ),
                    ListItem(
                      warna: Colors.pinkAccent,
                      lebar: 100,
                    ),
                    ListItem(
                      warna: Colors.greenAccent,
                      lebar: 100,
                    ),
                    ListItem(
                      warna: Colors.deepOrange,
                      lebar: 100,
                    ),
                    ListItem(
                      warna: Colors.lime,
                      lebar: 100,
                    ),
                    ListItem(
                      warna: Colors.brown,
                      lebar: 100,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key key,
    @required this.warna,
    @required this.lebar,
  }) : super(key: key);

  final Color warna;
  final double lebar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 200,
        width: lebar,
        color: warna,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
