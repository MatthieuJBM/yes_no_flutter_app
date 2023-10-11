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
              color: colors.secondary, borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola mundo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),

        _ImageBubble(),
        const SizedBox(
          height: 10,
        ),
        // Todo: imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Para obtener las dimensiones del dispositivo
    final size = MediaQuery.of(context).size;

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
            'https://yesno.wtf/assets/yes/13-c3082a998e7758be8e582276f35d1336.gif',
            width: size.width * 0.7,
            height: 150,
            // fit: BoxFit.cover hace que basado en las dimensiones dadas ahí coloque esta imagen.
            fit: BoxFit.cover,
        ));
  }
}
