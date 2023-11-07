import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Penggunaan Statefull')
        )
      ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            counter.toString(), 
            style: const TextStyle(
              fontSize: 100
            ),
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (counter > 0) {
                    counter -= 1;
                  }
                  print(counter);
                } ,
                child: const Icon(Icons.remove),
              ),
              ElevatedButton(
                onPressed: () {
                  counter += 1;
                  print(counter);
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
