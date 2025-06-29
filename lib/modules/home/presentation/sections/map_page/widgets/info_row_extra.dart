import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

class InfoRowExtra extends StatelessWidget {
  final String icon;
  final String title;
  final String desc;

  const InfoRowExtra(
      {required this.title, required this.icon, required this.desc, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(margin: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 24,
              height: 24,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 13),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    desc,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
                  )
                ],
              ),
            ),
            SvgPicture.asset(
              AppIcons.iArrowRight,
              width: 24,
              height: 24,
            )
          ],
        ),
      );
}
