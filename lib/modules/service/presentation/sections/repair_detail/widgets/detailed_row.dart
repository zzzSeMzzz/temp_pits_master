import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

class DetailedRow extends StatelessWidget {
  final String name;

  final String icon;

  const DetailedRow({required this.name, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
    children: [
      SvgPicture.asset(
        icon,
        width: 24,
        height: 24,
      ),
      const SizedBox(
        width: 8,
      ),
      Expanded(
        child: Text(
          name,
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(fontWeight: FontWeight.w700, fontSize: 13),
        ),
      )
    ],
  );
}
