import 'package:flutter/material.dart';
import 'package:yes_or_not_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_or_not_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messages = [
    Message(text: 'Hello sweetheart!', fromWho: FromWho.me),
    Message(text: '¿Ya regresaste del trabajo?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final Message newMessage = Message(text: text, fromWho: FromWho.me);
    messages.add(newMessage);

    if (text.trim().endsWith('?')) herReply();

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    messages.add(herMessage);
    notifyListeners();

    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
