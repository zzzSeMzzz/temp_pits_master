import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

class WorkSchedule extends StatelessWidget {
  const WorkSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(margin: EdgeInsets.symmetric(horizontal: 24),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: fieldGrey),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.alarm,
                        width: 24,
                        height: 24,
                        color: greenAccent,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Opens in a few minutes',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: green),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Open hours today: 09:00 - 21:00',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 12),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppIcons.arrowDownCircle,
                  width: 24,
                  height: 24,
                ),
              ],
            )
          ],
        ),
      );
}
