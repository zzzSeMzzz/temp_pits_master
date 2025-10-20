import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

class ChatMessage extends StatelessWidget {
  final bool isMyMessage;
  final String message;

  const ChatMessage(
      {required this.isMyMessage, required this.message, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment:
            isMyMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment:
                isMyMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: isMyMessage ? fieldGrey : Colors.black,
                  borderRadius: BorderRadius.circular(4)
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  message,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontWeight: FontWeight.w400, fontSize: 16, color: isMyMessage ? Colors.black : Colors.white),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    '12:58',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                    AppIcons.doubleCheck,
                    width: 16,
                    height: 16,
                  )
                ],
              )
            ],
          ),
        ],
      );
}
