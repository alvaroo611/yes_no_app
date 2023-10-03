import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Labrous derei cwdc ',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 10),
        const ImageBubble(),
      ],
    );
  }
}

class ImageBubble extends StatelessWidget {
  const ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          'https://media.licdn.com/dms/image/D4D08AQHYX8mHPuSXBg/croft-frontend-shrinkToFit1024/0/1639511743714?e=2147483647&v=beta&t=F_HrOBSCPkGDZAYepuafOGwiKe2nqUoS6ESFGdt5utM',
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover, loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          width: size.width * 0.7,
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: const Text('Mi amor❤ te esta mandando una imagen'),
        );
      }),
    );
  }
}
