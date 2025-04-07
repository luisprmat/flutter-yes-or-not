import 'package:flutter/material.dart';

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
    );
  }
}