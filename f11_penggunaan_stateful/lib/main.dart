import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Penggunaan Stateful')
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            counter.toString(),
            style: TextStyle(
              fontSize: 100 + counter.toDouble()
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <ElevatedButton>[
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(counter > 0) {
                      counter -= 1;
                    }
                  });
                }, 
                child: const Icon(Icons.remove)
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter += 1;
                  });
                },
                child: const Icon(Icons.add)
              )
            ]
          )
        ]
      )
    );
  }
}

