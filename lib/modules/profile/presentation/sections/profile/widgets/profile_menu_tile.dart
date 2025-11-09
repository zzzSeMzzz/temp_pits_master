import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

class ProfileMenuTile extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;

  const ProfileMenuTile(
      {required this.title, required this.icon, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Container(color: white,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              const Spacer(),
              SvgPicture.asset(
                AppIcons.iArrowRight,
                width: 24,
                height: 24,
                colorFilter: const ColorFilter.mode(textGrey, BlendMode.srcIn),
              )
            ],
          ),
        ),
      );
}
