import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /** (left) leading size has default height and width but only width can customized */
        leading: Container(
          color: Colors.brown,
        ),
        leadingWidth: 50,
        centerTitle: false, 
        titleSpacing: 0,
        /** (center) title size is customizable */
        title: Container(
          width: 35,
          height: 35,
          color: Colors.black
        ),
        /** (right) actions bar has default height */
        actions: [
          Container(
            width: 35,
            color: Colors.purple
          ),
          Container(
            width: 35,
            color: Colors.red
          ),
        ],
        /** (bottom) must wrapped PreferredSize */
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Container(
            width: 50,
            height: 100,
            color: Colors.lime,
          )
        ),
        /** (Flexible Space) has default width size */
        flexibleSpace: Container(
          height: 50,
          color: Colors.indigo[700],
          child: Text(
            'Flexible Space'.toUpperCase(),
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            )
          ),
        )
      )
    );
  }
}