import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Extract Widget')
          )
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ChatItem(
              imgUrl: 'https://picsum.photos/id/$index/200/300',
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            );
          }
        )
      )
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subtitle;
  const ChatItem({Key? key, required this.imgUrl, required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Text('10:04 AM')
    );
  }
}
