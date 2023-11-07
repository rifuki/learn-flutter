import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Color> myColor = [Colors.red, Colors.green, Colors.blue, Colors.teal];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue
        )
      ),
      home:  Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('List View Separator')
          ),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black
            );
          },
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            return Container(
              width: 300,
              height: 300,
              color: myColor[index]
            );
          }
        ),
      )
    );
  }
}

