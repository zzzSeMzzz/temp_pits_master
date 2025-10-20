import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoRow extends StatelessWidget {
  final String icon;
  final String title;
  //final String desc;
  final Color? iconBoxColor;

  const InfoRow(
      {required this.title,
      required this.icon,
      //required this.desc,
      this.iconBoxColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            if (iconBoxColor != null)
              Container(
                height: 24,
                width: 24,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: iconBoxColor),
              )
            else
              SvgPicture.asset(
                icon,
                width: 24,
                height: 24,
                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 12, color: Colors.white),
                softWrap: true,
              ),
            ),

          ],
        ),
      );
}
