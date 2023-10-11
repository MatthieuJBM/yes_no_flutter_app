import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading es un espacio que ponemos antes del titulo
        //leading: Icon(Icons.ac_unit),
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            // backgroundImage es de tipo ImageProvider. Hay imágenes que están dentro de la web,
            // hay otras que están en los assets.
            backgroundImage: NetworkImage(
                'https://img.thedailybeast.com/image/upload/dpr_2.0/c_crop,h_1440,w_1440,x_485,y_0/c_limit,w_128/d_placeholder_euli9k,fl_lossy,q_auto/v1519262699/180221-Zimmerman-Jennifer-Anniston-treatment-hero_qpmnon'),
          ),
        ),
        title: const Text('Mi amor 🩵'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SafeArea permite hacer visible las cosas que pueden estar ocultas.
    return SafeArea(
      // por si acaso queremos que ocupe el espacio a la izquierda.
      //left: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            // Expanded permite a expander un widget a toodo el espacio posible que el padre le dé
            Expanded(
              // ListView tiene varias formas de construirse. Tiene variso constructores con nombre.
              // Solamente los que están a punto de entrar en la pantalla, los que están en la pantalla
              // y los que acaban de salir van a estar visibles y construidos. Todos los demás no existen
              // hasta que bajo demanda se creen.
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return (index % 2 == 0) ? HerMessageBubble() : MyMessageBubble() ;
                  }),
            ),
            Text('mundo'),
          ],
        ),
      ),
    );
  }
}
