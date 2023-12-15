import 'package:flutter/material.dart';
import 'package:whatsappdemo_akash/Chats_demo.dart';

void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Chat> Chatlist = [
    Chat(Chats: "Chats", Updates: 'Updates', Calls: 'Calls')
  ];
 List<Widget> pagelist=[
   Chats()
 ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Chatlist.length,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(),
          title: Text('WhatsApp'),
          backgroundColor: Colors.green,
          leading: Icon(Icons.account_circle),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
            PopupMenuButton<int>(
                itemBuilder: (context) => [
                      // popupmenu item 1
                      PopupMenuItem(
                        value: 1,
                        //row has two child icon and text.
                        child: Row(
                          children: [Text("New Group")],
                        ),
                      ),
                      PopupMenuItem(
                        value: 2,
                        //row has two child icon and text.
                        child: Row(
                          children: [Text("New broadcast")],
                        ),
                      ),
                      PopupMenuItem(
                        value: 3,
                        //row has two child icon and text.
                        child: Row(
                          children: [Text("Linked devices")],
                        ),
                      ),
                      PopupMenuItem(
                        value: 4,
                        //row has two child icon and text.
                        child: Row(
                          children: [Text("Starred messages")],
                        ),
                      ),
                      PopupMenuItem(
                        value: 5,
                        //row has two child icon and text.
                        child: Row(
                          children: [Text("Payments")],
                        ),
                      ),
                      PopupMenuItem(
                        value: 6,
                        //row has two child icon and text.
                        child: Row(
                          children: [Text("Settings")],
                        ),
                      ),
                    ],
                onSelected: (Value) {
                  switch (Value) {
                    case 1:
                      print('New Group');
                      break;
                    case 2:
                      print('New broadcast');
                      break;
                    case 3:
                      print('Linked devices');
                      break;
                    case 4:
                      print('Starred messages');
                      break;
                    case 5:
                      print('Payments');
                      break;
                    case 6:
                      print(' Settings');
                      break;
                  }
                })
          ],
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.chat_bubble),
              text: 'Chats',
            ),
            Tab(
              icon: Icon(Icons.update),
              text: 'Updates',
            ),
            Tab(
              icon: Icon(Icons.call),
              text: 'Calls',
            ),
          ]),
        ),
         // body: TabBarView(children:   )
      // ),
    );
  }
}

class Chat {
  late String Chats;
  late String Updates;
  late String Calls;
  Chat({required this.Chats, required this.Updates, required this.Calls});
}

