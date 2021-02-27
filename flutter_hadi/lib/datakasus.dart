import 'package:covid/api/http_service.dart';
import 'package:flutter/material.dart';
import 'package:covid/api/post_model.dart';

class DataKasus extends StatelessWidget {
  final DataIndonesia _getPost = new DataIndonesia();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _getPost.getDataIndonesia(),
          builder: (BuildContext context, AsyncSnapshot<List<Covid>> snapshot) {
            if (snapshot.hasData) {
              List<Covid> dataPost = snapshot.data;

              return ListView.builder(
                  itemCount: dataPost.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(1),
                                child: Text(
                                  "Data Kasus Dunia",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontFamily: "Arial",
                                      color: Colors.blueGrey),
                                ),
                              ),
                              Container(
                                height: 20,
                                child: Text(
                                  "Terakhir Update : ",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "Arial",
                                      color: Colors.blueGrey),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 100,
                                    width: 300,
                                    margin: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          child: Image.asset(
                                            'assets/emoji1.png',
                                            width: 60,
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.all(5),
                                              child: Center(
                                                child: Text(
                                                  "POSITIF",
                                                  style: TextStyle(
                                                    height: 2,
                                                    color: Colors.black,
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // margin: EdgeInsets.all(10),
                                              height: 20,
                                              child: Center(
                                                child: Text(
                                                  "765.908.765",
                                                  style: TextStyle(
                                                    height: 1,
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 100,
                                    width: 300,
                                    margin: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          child: Image.asset(
                                            'assets/emoji2.png',
                                            width: 60,
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.all(5),
                                              child: Center(
                                                child: Text(
                                                  "SEMBUH",
                                                  style: TextStyle(
                                                    height: 2,
                                                    color: Colors.black,
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // margin: EdgeInsets.all(10),
                                              height: 20,
                                              child: Center(
                                                child: Text(
                                                  "87.908.987",
                                                  style: TextStyle(
                                                    height: 1,
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 100,
                                    width: 300,
                                    margin: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          child: Image.asset(
                                            'assets/emoji3.png',
                                            width: 60,
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.all(5),
                                              child: Center(
                                                child: Text(
                                                  "MENINGGAL",
                                                  style: TextStyle(
                                                    height: 2,
                                                    color: Colors.black,
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // margin: EdgeInsets.all(10),
                                              height: 20,
                                              child: Center(
                                                child: Text(
                                                  "123.544.678",
                                                  style: TextStyle(
                                                    height: 1,
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 130,
                                    width: 300,
                                    margin: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          child: Image.asset(
                                            'assets/indonesia.png',
                                            width: 60,
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.all(5),
                                              child: Center(
                                                child: Text(
                                                  "INDONESIA",
                                                  style: TextStyle(
                                                    height: 2,
                                                    color: Colors.black,
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // margin: EdgeInsets.all(10),
                                              height: 20,
                                              child: Center(
                                                child: Text(
                                                  "Positif : " +
                                                      dataPost[index].positif,
                                                  style: TextStyle(
                                                    height: 1,
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // margin: EdgeInsets.all(10),
                                              height: 20,
                                              child: Center(
                                                child: Text(
                                                  "Sembuh : " +
                                                      dataPost[index].sembuh,
                                                  style: TextStyle(
                                                    height: 1,
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // margin: EdgeInsets.all(10),
                                              height: 20,
                                              child: Center(
                                                child: Text(
                                                  "Meninggal : " +
                                                      dataPost[index].meninggal,
                                                  style: TextStyle(
                                                    height: 1,
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  });
            }
          }),
    );
  }
}
