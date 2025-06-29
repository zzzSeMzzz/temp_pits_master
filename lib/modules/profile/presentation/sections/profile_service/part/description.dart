import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

class ProfileDescription extends StatelessWidget {
  final String desc;

  const ProfileDescription({required this.desc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: fieldGrey),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.infoCircle,
                  width: 24,
                  height: 24,
                  color: black,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Description',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              desc,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 12),
            )
          ],
        ),
      );
}
