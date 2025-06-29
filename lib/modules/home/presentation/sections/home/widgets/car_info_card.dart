import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/modules/home/presentation/sections/home/widgets/car_info_bottomsheet.dart';

class CarInfoBox extends StatelessWidget {
  const CarInfoBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: fieldGrey),
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.testBrand,
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Porsche 911 (992 Turbo S)',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  Text(
                    'State number: o333oo-27',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  Text(
                    'Price: 240.000 \$',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  showCarInfoBottomSheet(context);

                },
                child: SvgPicture.asset(
                  AppIcons.threeDot,
                  width: 24,
                  height: 24,
                )),
          ],
        ),
      );
}
