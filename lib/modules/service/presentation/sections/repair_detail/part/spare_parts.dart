import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_detail/widgets/spare_part_item.dart';

class SpareParts extends StatelessWidget {
  const SpareParts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          SvgPicture.asset(
            AppIcons.wrench,
            width: 24,
            height: 24,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            'Spare parts',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
          )
        ],
      ),
      const SizedBox(
        height: 16,
      ),
      Wrap(
        spacing: 4,
        runSpacing: 4,
        children: List.generate(
            3, (index) => const SparePartItem(name: 'Salom sd')),
      ),
    ],
  );
}
