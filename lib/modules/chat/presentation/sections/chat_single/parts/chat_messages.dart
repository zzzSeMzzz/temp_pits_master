import 'package:flutter/cupertino.dart';
import 'package:pits_app/modules/chat/presentation/sections/chat_single/widgets/chat_message.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: 2,
      separatorBuilder: (context, index) => const SizedBox(
            height: 16,
          ),
      itemBuilder: (context, index) => ChatMessage(
            isMyMessage: index % 2 == 0,
            message: index % 2 == 0 ? '¡Está en construcción este apartado! Gracias' : '¡Pronto podrás hablar con los mecánicos!',
          ));
}
