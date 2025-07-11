import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';

class SelectionBox extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String svgIcon;
  final double? width;

  const SelectionBox(
      {required this.onTap,
      required this.title,
      required this.svgIcon,
       this.width,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onTap,
        child: Container(width: width,
          height: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4), color: fieldGrey),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SvgPicture.asset(
                svgIcon,
                width: 100,
                height: 100,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
}
