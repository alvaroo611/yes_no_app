import 'package:flutter/material.dart';

class HerMessaggeBubble extends StatelessWidget {
  const HerMessaggeBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              ': Gracias, es un placer conocerte también. Siempre es genial conocer a los fans. ¿Cuál ha sido tu momento favorito de mi carrera? Sí, esa fue una experiencia inolvidable, a pesar de que no ganamos ese torneo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
