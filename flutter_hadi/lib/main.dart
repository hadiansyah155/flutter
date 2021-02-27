import 'package:flutter/material.dart';

import './datakasus.dart' as datakasus;
import './indonesia.dart' as indonesia;
import './global.dart' as global;
import './tentang.dart' as tentang;

void main() {
  runApp(new MaterialApp(
    title: "Tracking-covid-19",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //create controller untuk tabBar
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //create appBar
      appBar: new AppBar(
        //warna background
        backgroundColor: Colors.blue,
        //judul
        title: new Text("Tracking-covid19"),
        //bottom
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.add_chart),
              text: "Data kasus",
            ),
            new Tab(
              icon: new Icon(Icons.table_chart),
              text: "Indonesia",
            ),
            new Tab(
              icon: new Icon(Icons.table_chart),
              text: "Global",
            ),
            new Tab(
              icon: new Icon(Icons.add_alert_sharp),
              text: "Tentang",
            ),
          ],
        ),
      ),

      //source code lanjutan
      //buat body untuk tab viewnya
      body: new TabBarView(
        //controller untuk tab bar
        controller: controller,
        children: <Widget>[
          //kemudian panggil halaman sesuai tab yang sudah dibuat
          new datakasus.DataKasus(),
          new indonesia.TableIndonesia(),
          new global.TableGlobal(),
          new tentang.Tentang()
        ],
      ),
    );
  }
}
