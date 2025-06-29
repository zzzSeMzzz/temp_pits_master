import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_detail/part/repair_progress.dart';

class RepairStatus extends StatelessWidget {
  const RepairStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.loader,
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Application status',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'In a car service',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 13),
            ),
            SizedBox(
              height: 12,
            ),
            RepairProgress(),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      );
}
