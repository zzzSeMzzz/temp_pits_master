import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_selection/parts/axis_selector.dart';

class RepairDamagePart extends StatelessWidget {
  const RepairDamagePart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          SvgPicture.asset(
            AppIcons.lightning,
            width: 24,
            height: 24,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            'Damage',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 24),
          )
        ],
      ),
      const SizedBox(
        height: 32,
      ),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Image.asset(
            AppImages.carSelection,
            fit: BoxFit.cover,
            width: double.maxFinite,
          )),
      const SizedBox(
        height: 24,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Axis',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
          ),
        ],
      ),
      SizedBox(
        height: 24,
      ),
      AxisSelector(title: 'Axis 1'),
    ],
  );
}
