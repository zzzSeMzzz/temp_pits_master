import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

class CarCategoryItem extends StatelessWidget {
  final String icon;
  final String title;

  const CarCategoryItem({required this.title, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              width: 40,
              height: 40,
            ),
            Text(
              title,
              maxLines: 2,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 13, fontWeight: FontWeight.w700),
            )
          ],
        ),
      );
}
