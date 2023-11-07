import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column')
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 100,
                  color: Colors.blue
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green
                ),
                Container(
                  width: 50,
                  height: 190,
                  color: Colors.red
                ),
                Container(
                  width: 50,
                  height: 70,
                  color: Colors.pink
                ),
                Container(
                  width: 50,
                  height: 260,
                  color: Colors.grey
                )
              ]
            ),
            const SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.blue
                ),
                Container(
                  width: 60,
                  height: 50,
                  color: Colors.deepOrange
                ),
                Container(
                  width: 234,
                  height: 50,
                  color: Colors.purple
                ),
                Container(
                  width: 123,
                  height: 50,
                  color: Colors.indigo
                ),
                Container(
                  width: 300,
                  height: 50,
                  color: Colors.teal
                )
              ]
            ),
            const SizedBox(height: 50),
            Stack(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 90,
                  color: Colors.amberAccent,
                ),
                Container(
                  width: 150,
                  height: 70,
                  color: Colors.green
                ),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.red
                ),
                Container(
                  width: 50,
                  height: 25,
                  color: Colors.blue
                ),
              ]
            )
          ]
        )
      )
    );
  }
}
