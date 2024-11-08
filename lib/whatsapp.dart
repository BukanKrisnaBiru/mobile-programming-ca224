import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Layout',
      theme: ThemeData(
        primaryColor: Colors.green,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatelessWidget {
  final List<Map<String, String>> conversations = [
    {
      'name': 'Krisna',
      'message': 'Lagi dimana?',
      'time': '10:00 AM',
    },
    {
      'name': 'Ayu',
      'message': 'Besok ada kemana?',
      'time': '09:15 AM',
    },
    {
      'name': 'Santi',
      'message': 'Gaji udah masuk blm?',
      'time': 'Yesterday',
    },
    {
      'name': 'Angga',
      'message': 'Dimana wi?',
      'time': 'Mon',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Icon(Icons.chat, color: Colors.green),
            ),
            SizedBox(width: 10),
            Text('WhatsApp'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Handle more options
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: conversations.length,
        itemBuilder: (context, index) {
          final conversation = conversations[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(conversation['name']![0]),
            ),
            title: Text(conversation['name']!),
            subtitle: Text(conversation['message']!),
            trailing: Text(conversation['time']!),
            onTap: () {
              // Handle tap on conversation
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
