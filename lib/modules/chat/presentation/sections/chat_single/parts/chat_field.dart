import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/globals/widgets/interaction/w_textfield.dart';

class ChatField extends StatelessWidget {
  const ChatField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: fieldGrey),
        child: Row(
          children: [
            SizedBox(
              width: 16,
            ),
            SvgPicture.asset(
              AppIcons.microphone,
              width: 24,
              height: 24,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: WTextField(contentPadding: EdgeInsets.fromLTRB(12, 12, 28, 12),
                hasClearButton: true,
                controller: TextEditingController(),
                suffixRightPosition: 0,
                keyBoardType: TextInputType.multiline,
                fillColor: Colors.transparent,
                borderColor: Colors.transparent,
                hasBorderColor: false,
                hintText: 'Type here...',
                onChanged: (text) {},
                height: 40,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            SvgPicture.asset(
              AppIcons.gallery,
              width: 24,
              height: 24,
            ),
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(
              AppIcons.emojis,
              width: 24,
              height: 24,
            ),
          ],
        ),
      );
}
