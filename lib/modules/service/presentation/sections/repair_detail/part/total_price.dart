import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

class RepairTotalPrice extends StatelessWidget {
  const RepairTotalPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>Container(
    child: Column(children: [
      Row(
        children: [
          SvgPicture.asset(
            AppIcons.calculator,
            width: 24,
            height: 24,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            'Repair price',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          Spacer(),
          Text(
            '\$ 235',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 24),
          )
        ],
      ),
    ],),

  );
}
