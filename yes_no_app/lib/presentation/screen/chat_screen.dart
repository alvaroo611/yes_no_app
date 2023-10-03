import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/screen/widget/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/screen/widget/chat/myMesaggeBubble.dart';

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
                'https://imagenes.20minutos.es/files/article_default_content/files/fp/uploads/imagenes/2020/02/10/leonardo-dicaprio.r_d.2865-1482.jpeg'),
          ),
        ),
        title: const Text('Messi'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HerMessaggeBubble()
                      : const MyMessaggeBubble();
                },
              ),
            ),
            Text('Mundo')
          ],
        ),
      ),
    );
  }
}
