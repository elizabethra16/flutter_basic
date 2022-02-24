import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("MyApp")),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              height: 70,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(padding: EdgeInsets.all(20.0)),
                  Text(
                    "BERITA TERKINI",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                Text(
                  "PERTANDINGAN HARI INI",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )
                ],
              ),
            ),
          Container(
            
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 211, 136, 195),
                  width: 5,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    "data:image/jpeg;base64,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",
                    fit: BoxFit.cover,
                    height: 500,
                    width: 1510,
                  ),
                  SizedBox(
                    child: Container(
                      padding: EdgeInsets.all(3),
                      height: 50,
                      width: 1370,
                      alignment: Alignment.center,
                      child: Text("Costa Mendekat ke Palmeiras",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 80,
                      width: 1500,
                      color: Color.fromARGB(255, 211, 136, 195),
                      alignment: Alignment.centerLeft,
                      child: Text("Transfer",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(15.0)),
            Container(
              margin: EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 0),
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 209, 199, 207),
                  width: 5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    "data:image/jpeg;base64,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",
                    fit: BoxFit.fill,
                    width: 350,
                    height: 300,
                  ),
                  Flexible(
                      child: Text(
                    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0, right: 10, left: 10),
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Color.fromARGB(255, 209, 199, 207),
                width: 5,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Barcelona 13,2021',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(15.0)),
            Container(
              margin: EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 0),
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 209, 199, 207),
                  width: 5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    "data:image/jpeg;base64,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",
                    fit: BoxFit.fill,
                    width: 350,
                    height: 300,
                  ),
                  Flexible(
                      child: Text(
                    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0, right: 10, left: 10),
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Color.fromARGB(255, 209, 199, 207),
                width: 5,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Barcelona 13,2021',
                    style: TextStyle(fontSize: 25),
                  ),
               

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}