import 'package:flutter/cupertino.dart';
import 'package:pits_app/modules/chat/presentation/sections/chat/widget/chat_tile.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.separated(padding: EdgeInsets.zero,
      separatorBuilder: (context, index) => const SizedBox(
            height: 8,
          ),
      itemCount: 1,
      itemBuilder: (context, index) {
        return const ChatTile();
      });
}
