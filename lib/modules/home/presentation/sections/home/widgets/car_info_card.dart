import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/base/safe_image.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/data/model/vehicle.dart';
import 'package:pits_app/modules/home/presentation/sections/home/widgets/car_info_bottomsheet.dart';

class CarInfoBox extends StatelessWidget {
  const CarInfoBox({Key? key, required this.vehicle}) : super(key: key);

  final Vehicle vehicle;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: fieldGrey),
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeNetworkImage(
              url: vehicle.image,
              fallbackAsset:
              AppImages.testBrand,
              width: 40,
              height: 40
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
                    vehicle.model ?? 'Unknown car model',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  Text(
                    'State number: ${vehicle.registrationNumber ?? ""}',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  Text(
                    'Price: ${vehicle.marketPrice ?? "?"} \$',
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
