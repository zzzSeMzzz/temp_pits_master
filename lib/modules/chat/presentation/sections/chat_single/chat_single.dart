import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/modules/chat/presentation/sections/chat_single/parts/chat_field.dart';
import 'package:pits_app/modules/chat/presentation/sections/chat_single/parts/chat_messages.dart';

class ChatSingleScreen extends StatelessWidget {
  const ChatSingleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Scaffold(
          backgroundColor: white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(
                  height: 10 + MediaQuery.of(context).padding.top,
                ),
                Row(
                  children: [
                   /* GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        AppIcons.iArrowLeft,
                        width: 24,
                        height: 24,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),*/
                    Text(
                      'Mecánico On-line',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 24),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: fieldGrey),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Today, Jan 27',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Expanded(child: ChatMessages()),
                const SizedBox(
                  height: 30,
                ),
                const ChatField(),
                SizedBox(
                  height: 16 + MediaQuery.of(context).padding.bottom,
                )
              ],
            ),
          ),
        ),
  );
}
