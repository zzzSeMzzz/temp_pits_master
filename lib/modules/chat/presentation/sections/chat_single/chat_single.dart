import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/modules/chat/presentation/sections/chat_single/parts/chat_field.dart';
import 'package:pits_app/modules/chat/presentation/sections/chat_single/parts/chat_messages.dart';

class ChatSingleScreen extends StatelessWidget {
  const ChatSingleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: white,

        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Pits", style: context.textTheme.displayLarge!.copyWith(fontSize: 24),),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
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
                        'Today, ${DateFormat('MMM d').format(DateTime.now())}',
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
                /*const SizedBox(
                  height: 30,
                ),
                const ChatField(),*/
                Row(
                  children: [
                    SvgPicture.asset(AppIcons.lock),
                    const SizedBox(width: 8,),
                    Expanded(
                        child: Text("No puedes escribir mensajes en este chat.",
                          style: context.textTheme.bodyMedium!.copyWith(fontSize: 16),
                          overflow: TextOverflow.ellipsis,
                        )),
                  ],
                ),
                const SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      );
}
