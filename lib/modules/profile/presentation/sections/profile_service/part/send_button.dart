import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/calls/presentation/sections/activities/activities_screen.dart';
import 'package:pits_app/modules/navigation/presentation/navigator.dart';
import 'package:pits_app/modules/service/presentation/sections/part_selection/part_selection_screen.dart';

class ProfileSendButton extends StatelessWidget {
  const ProfileSendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price range',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontWeight: FontWeight.w400, fontSize: 12),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '\$ 10 - 1240',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ],
            ),
            WButton(borderRadius: 4,
              width: 132,
              onTap: () {
                Navigator.push(context, fade(page: PartSelectionScreen()));
              },
              height: 48,
              text: 'Send request',
            )
          ],
        ),
      );
}
