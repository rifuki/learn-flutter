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
            child: Text('List Tile')
          ),       
        ),
        body: ListView(
          children: <Widget>[
            /** dense */
            ListTile(
              title: Text('This is Title'.toUpperCase()),
              subtitle: const Text('This is subtitle okay...'),
              leading: const CircleAvatar(),
              trailing: const Text('10:12 PM'),
              dense: true
            ),
            const Divider(
              color: Colors.black
            ),
            /** tileColor */
            ListTile(
              title: Text("This is Title".toUpperCase()),
              subtitle: const Text('This is subtitle okay...'),
              leading: const CircleAvatar(),
              trailing: const Text('10:13 PM'),
              tileColor: Colors.yellow,
            ),
            const Divider(
              color: Colors.black
            ),
            /** subtitle overflow */
            ListTile(
              title: Text('This is Title'.toUpperCase()),
              subtitle: const Text('Lorem ipsum dolor sit amet, officia excepteur ex fugiat.', maxLines: 2, overflow: TextOverflow.ellipsis),
              leading: const CircleAvatar(),
              trailing: const Text('10:14 PM'),
            ),
            const Divider(
              color: Colors.black
            ),
            /** contentPadding all */
            ListTile(
              contentPadding: const EdgeInsets.all(20),
              title: Text('This is Title'.toUpperCase()),
              subtitle: const Text('This is subtitle okay.'),
              leading: const CircleAvatar(),
              trailing: const Text('10:15 PM')
            ),
            const Divider(
              color: Colors.black
            ),
            /** contentPadding only */
            ListTile(
              contentPadding: const EdgeInsets.only(top: 30),
              title: Text('This is Title'.toUpperCase()),
              subtitle: const Text('This is subtitle okay.'),
              leading: const CircleAvatar(),
              trailing: const Text('04:41 PM')
            ),
            const Divider(
              color: Colors.black
            ),
            /** contentPadding like my or mx in html */
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 8),
              title: Text('This is Title'.toUpperCase()),
              subtitle: const Text('This is subtitle okay.'),
              leading: const CircleAvatar(),
              trailing: const Text('04:46 PM'),
              onTap: () {
                return;
              }
            ),
            const Divider(
              color: Colors.black
            )
          ]
        ),
      )
    );
  }
}
