import 'dart:math';

import 'package:firstapp/mistral_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:get/get.dart';



class Ai_Chat extends StatelessWidget {
  const Ai_Chat({super.key,});



  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AI_Chat_Controller());

    return Scaffold(
      appBar: AppBar(
        title: Text("Kaffi Ai",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24),),
        centerTitle: true,

      ),
      body: Chat(

        currentUserId: 'user1',
        resolveUser: (UserID id) async {
          return User(
            id: id,
            name: id == 'user1' ? 'You' : 'KAAF AI',
          );
        },
        chatController: controller.chatController,
        onMessageSend: (text) async {

          final userMessage = TextMessage(
            id: '${Random().nextInt(1000) + 1}',
            authorId: 'user1',
            createdAt: DateTime.now().toUtc(),
            text:text,
          );
          controller.chatController.insertMessage(userMessage);

          final aiReply = await controller.getReply(text);
          controller.chatController.insertMessage(aiReply);
        },
      ),
    );
  }
}

class AI_Chat_Controller extends GetxController {
  static AI_Chat_Controller get instance => Get.find<AI_Chat_Controller>();

  final ChatController chatController = InMemoryChatController();
  final mistralService = MistralService();

  Future<TextMessage> getReply(String text) async {
    try {
      final res = await mistralService.getChatCompletion(text);
      return TextMessage(
        id: '${Random().nextInt(10000) + 1000}',
        authorId: 'ai',
        createdAt: DateTime.now().toUtc(),
        text: res,
      );
    } catch (e) {
      print("Error: $e");
      return TextMessage(
        id: '${Random().nextInt(10000) + 1000}',
        authorId: 'ai',
        createdAt: DateTime.now().toUtc(),
        text: "Sorry, something went wrong.",
      );
    }
  }
}
