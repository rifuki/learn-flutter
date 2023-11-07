import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Widget> myList = <Widget>
  [
    Container(
      width: 300,
      height: 300,
      color: Colors.red
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.green
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.blue
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.yellow
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View')
        ),
        /** ListView make widget scrollable and default full width and vertical scroll */
        body: ListView(
          scrollDirection: Axis.horizontal, /* <- make horizontal scroll and default full height*/
          children: myList
        )
      )
    );
  }
}