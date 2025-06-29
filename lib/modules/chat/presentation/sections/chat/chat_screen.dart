import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/modules/chat/presentation/sections/chat/part/chat_list.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(backgroundColor: white,
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10 + MediaQuery.of(context).padding.top,
              ),
              Text(
                'Messeges',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 24),
              ),
              const SizedBox(
                height: 32,
              ),
              Expanded(child: ChatList()),
              SizedBox(height: 16,)
            ],
          ),
        ),
      );
}
