import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/widgets/social_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            color: divider,
            height: 2,
          )),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Or sign in with',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ),
          Expanded(
              child: Container(
            color: divider,
            height: 2,
          )),
        ],
      ),
      const SizedBox(
        height: 16,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SocialButton(icon: AppIcons.facebook),
          SizedBox(
            width: 16,
          ),
          SocialButton(icon: AppIcons.instagram),
          SizedBox(
            width: 16,
          ),
          SocialButton(icon: AppIcons.mail),
        ],
      ),
    ],
  );
}
