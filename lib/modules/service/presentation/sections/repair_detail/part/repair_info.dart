import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_detail/widgets/detailed_row.dart';

import '../../../../../../assets/constants/app_icons.dart';

class RepairInfo extends StatelessWidget {
  const RepairInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(
            'Rabbit Lamp',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          const SizedBox(
            width: 8,
          ),
          SvgPicture.asset(
            AppIcons.checkCircle,
            width: 16,
            height: 16,
          ),
        ],
      ),
      const SizedBox(
        height: 4,
      ),
      Text(
        'Auto Repair & Service',
        style: Theme.of(context)
            .textTheme
            .displaySmall!
            .copyWith(fontWeight: FontWeight.w500, fontSize: 13),
      ),
      SizedBox(
        height: 10,
      ),
      DetailedRow(name: '+7 495 123 45 67', icon: AppIcons.phone),
      SizedBox(
        height: 14,
      ),
      DetailedRow(
          name: 'Carretera De Parla A Pinto, 28983 Parla, Madrid, España',
          icon: AppIcons.place),
    ],
  );
}
