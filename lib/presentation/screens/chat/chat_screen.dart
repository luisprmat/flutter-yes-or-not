import 'package:flutter/material.dart';
import 'package:yes_or_not_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_or_not_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_or_not_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://b.thumbs.redditmedia.com/3xCXysdFRbbW87FiDlZu2DBOkFdiP5pM15nntvSToXw.png'),
          ),
        ),
        title: Text('My Sweetheart ❤️'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
                },
              ),
            ),
            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
