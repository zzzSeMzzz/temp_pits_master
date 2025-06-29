import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';

class SocialButton extends StatelessWidget {
  final String icon;

  const SocialButton({required this.icon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffEFF1F3)),
        height: 48,
        width: 48,
        child: Center(
            child: SvgPicture.asset(
          icon,
          width: 24,
          color: darkBlue,
          height: 24,
        )),
      );
}
