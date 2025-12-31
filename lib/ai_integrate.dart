import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter/material.dart';

class Ai{
  String s="xNmaPhD20bdAoxUSOMD4agcjLFerZHJC";
}



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KAAF AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Basic(),
    );
  }
}



class Basic extends StatefulWidget {
  const Basic({super.key});

  @override
  BasicState createState() => BasicState();
}

class BasicState extends State<Basic> {
  final _chatController = InMemoryChatController();

  @override
  void dispose() {
    _chatController.dispose();
    super.dispose();
  }

  void _simulateIncomingMessage(String text) {
    final incoming = TextMessage(
      id: '${Random().nextInt(10000) + 1000}',
      authorId: 'ai',
      createdAt: DateTime.now().toUtc(),
      text: text,
    );

    _chatController.insertMessage(incoming);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KAAF AI'),
        backgroundColor: const Color(0xFF4E2C6F),
      ),
      body: Chat(
        chatController: _chatController,
        currentUserId: 'user1',
        onMessageSend: (text) {
          final userMessage = TextMessage(
            id: '${Random().nextInt(1000) + 1}',
            authorId: 'user1',
            createdAt: DateTime.now().toUtc(),
            text: text,
          );

          _chatController.insertMessage(userMessage);

          // Simulate AI reply after 1 second
          Future.delayed(const Duration(seconds: 1), () {
            _simulateIncomingMessage("I received: $text. How else can I help?");
          });
        },
        resolveUser: (UserID id) async {
          return User(
            id: id,
            name: id == 'user1' ? 'You' : 'KAAF AI',
          );
        },
      ),
    );
  }
}
