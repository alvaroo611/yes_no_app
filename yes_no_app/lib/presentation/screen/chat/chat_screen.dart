import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/screen/chat/widget/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/screen/chat/widget/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/screen/chat/widget/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.gannett-cdn.com/presto/2020/08/25/USAT/842737a0-5b6c-47bc-adbc-ea5bef879661-Messi_gone.jpg?crop=3044,1712,x224,y46&width=3044&height=1712&format=pjpg&auto=webp'),
          ),
        ),
        title: const Text('Mi amor ❤'),
        centerTitle: false,
      ),
      body: const ChatView(),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return (index % 2 == 0)
                ? const MyMessageBubble()
                : const HerMessageBubble();
          })),
          const MessageFieldBox(),
        ],
      ),
    ));
  }
}
