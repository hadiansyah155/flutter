import 'package:flutter/material.dart';

class Tentang extends StatelessWidget {
  static String tag = 'tentang';

  @override
  Widget build(BuildContext context) {
    final covid = Hero(
      tag: 'covid',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/corona.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'COVID-19',
        style: TextStyle(
            fontSize: 28.0, color: Colors.white, fontFamily: 'Times New Roman'),
      ),
    );

    final text = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Covid-19 adalah penyakit menular yang disebabkan oleh virus corona yang baru-baru ini ditemukan. Sebagian besar orang yang terkena virus Covid-19 akan mengalami gejala ringan hingga sedang,dan akan pulih tanpa penanganan khusus.',
        style: TextStyle(
            fontSize: 16.0, color: Colors.white, fontFamily: 'Times New Roman'),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[covid, welcome, text],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
