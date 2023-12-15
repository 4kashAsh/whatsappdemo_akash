import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<C> Whatslist = [
    C(img: 'img', name: 'akash', chat: 'hei', date: '15/12/23'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Whatslist.length,
        itemBuilder: (BuildContext context, int index) {
        C p=Whatslist[index];
        return ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage("${p.img}"),),
          title: Text('${p.name}'),
          subtitle: Text('${p.chat}'),
          trailing: Text('${p.date}'),
        );
      },),
    );
  }
}
class C {
  late String chat;
  late String name;
  late String img;
  late String date;
  C({required this.img,required this.name,
        required this.chat,
        required this.date});}
