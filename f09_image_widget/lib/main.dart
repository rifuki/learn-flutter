import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Image Widget'),
          )
        ),
        body: ListView(
          children: <Widget>[
            /** image from assets */
            Container(
              width: 350,
              height: 500,
              color: Colors.brown,
              child: const Image(
                image: AssetImage('images/ichi.jpeg'),
                fit: BoxFit.cover
              )
            ),
            const Divider(),
            /** image from assets */
            Container(
              width: 150,
              height: 300,
              color: Colors.purple,
              child: Image.asset('images/ni.jpeg', fit: BoxFit.fill)
            ),
            const Divider(),
            /** image from network */
            const Image(
              image: NetworkImage('https://picsum.photos/323?random=1'),
            ),
            /** image from network */
            const Divider(),
            Image.network('https://picsum.photos/323?random=2')
          ]
        ),
      )
    );
  }
}
