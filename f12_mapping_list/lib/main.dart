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
  HomePage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> myList = [
    {
      "name": "John",
      "age": 30,
      "favColor": ["Blue", "Green", "Red", "Yellow", "Orange", "Purple"]
    },
    {
      "name": "Sarah",
      "age": 25,
      "favColor": ["Red", "Yellow", "Purple"]
    },
    {
      "name": "Michael",
      "age": 35,
      "favColor": ["Green", "Purple", "Blue"]
    },
    {
      "name": "Emily",
      "age": 28,
      "favColor": ["Purple", "Blue", "Pink"]
    },
    {
      "name": "David",
      "age": 22,
      "favColor": ["Yellow", "Red", "Orange"]
    }
  ];

  final Map<String, Color> myColor = {
    "Blue": Colors.blue,
    "Purple": Colors.purple,
    "Yellow": Colors.yellow,
    "Red": Colors.red,
    "Green": Colors.green,
    "Pink": Colors.pink,
    "Orange": Colors.orange,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Mapping List')
        )
      ),
      body: ListView(
        children: myList.map((data) {
          List<String> myFavColor = data['favColor'];
          return Card(
            margin: const EdgeInsets.all(20),
            color: Colors.black.withOpacity(0.1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.9)
            ),
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      const CircleAvatar(),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Text>[
                          Text('Name: ${data['name']}'),
                          Text('Age: ${data['age']}')
                        ]
                      )
                    ]
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: myFavColor.map((color) {
                        return Container(
                          color: myColor[color] ?? Colors.grey,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 8
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Text(color)
                        );
                      }).toList()
                    ),
                  )
                ]
              ),
            )
          );
        }).toList()
      ),
    );
  }
}
