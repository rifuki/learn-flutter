import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Date Format')
        )
      ),
      body: Center(
        child: Column(
          children: <Text>[
            Text(
              /** custom time */
              DateTime(2001, 08, 02, 03, 04).toString(),
              style: const TextStyle(
                fontSize: 25
              )
            ),
            Text(
              /** time now */
              DateTime.now().toString(),
              style: const TextStyle(
                fontSize: 25
              )
            ),
            /** date format */
            Text(
              DateFormat.yMMMMEEEEd().format(DateTime.now()),
              style: const TextStyle(
                fontSize: 25
              )
            ),
          ]
        )
      )
    );
  }
}