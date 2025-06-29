import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';

class ProfileActionItem extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String icon;

  const ProfileActionItem(
      {required this.onTap, required this.title, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {},
      child: Container(padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: textGrey)),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 18,
              height: 18,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 13),
            )
          ],
        ),
      ));
}
