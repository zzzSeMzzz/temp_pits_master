import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

String text =
    'Donec vitae mi vulputate, suscipit urna in, malesuada nisl. Pellentesque laoreet pretium nisl, et pulvinar massa eleifend sed. Curabitur maximus mollis diam, vel varius sapien suscipit eget.';


class RepairComment extends StatelessWidget {
  const RepairComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>Container(child: Column(children: [
    Row(
      children: [
        SvgPicture.asset(
          AppIcons.chatCircle,
          width: 24,
          height: 24,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          'Comment',
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ],
    ),
    const SizedBox(
      height: 16,
    ),
    Text(
      text,
      style: Theme.of(context)
          .textTheme
          .displaySmall!
          .copyWith(fontWeight: FontWeight.w400, fontSize: 12),
    ),
  ],),);
}
