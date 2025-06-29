import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/assets/constants/app_images.dart';

class RepairHeader extends StatelessWidget {
  const RepairHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>Container(child:   Row(
    children: [
      Image.asset(
        AppImages.orderSample,
        width: 40,
        height: 40,
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Porsche 911 (992 Turbo S)',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(
                fontWeight: FontWeight.w700, fontSize: 16),
          ),
          Text(
            'State number: o333oo-27',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(
                fontWeight: FontWeight.w400, fontSize: 16),
          ),
          Text(
            'Price: 240.000 \$',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(
                fontWeight: FontWeight.w700, fontSize: 16),
          )
        ],
      )
    ],
  ),);
}
