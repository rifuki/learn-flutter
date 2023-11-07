import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  
  final List<Color> myColor = [
    Colors.red, 
    Colors.green, 
    Colors.blue, 
    Colors.yellow
  ];

  final List<Widget> myWidget = List.generate(
    100,
    (index) => Text(
      (index+1).toString(),
      style: TextStyle(
        fontSize: 20 + index.toDouble()
      )
    )
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('I Don\'t Know')
          )
        ),
        body: ListView(
          children: myWidget
        )
      )
    );
  }
}