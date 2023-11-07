import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Color> myColor = [Colors.red, Colors.green, Colors.blue, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('List View Builder')
          )
        ),
        body: ListView.builder(
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            return Container(
              // width: 40,
              height: 300,
              color: myColor[index]
            );
          }
        )
      )
    );
  }
}