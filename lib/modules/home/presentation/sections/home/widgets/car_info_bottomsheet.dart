import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/modules/home/presentation/sections/home/widgets/car_info_row.dart';

showCarInfoBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      builder: (c) => const CarInfoBottomSheet());
}

class CarInfoBottomSheet extends StatelessWidget {
  const CarInfoBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        //height: MediaQuery.of(context).size.height * 0.5,
        padding: EdgeInsets.fromLTRB(
            24, 20, 24, 16 + MediaQuery.of(context).padding.bottom),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        AppIcons.close,
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Info',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 24),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const CarInfoRow(title: 'Insurance valid', value: '2023.03.07'),
            const CarInfoRow(title: 'Next service', value: '122.300 km'),
            const CarInfoRow(
                title: 'Oil and filter change', value: '116.600 km'),
            const CarInfoRow(title: 'Wheel inspection', value: '120.400 km'),
            const CarInfoRow(
                title: 'Last visit to the car service', value: '114.300 km'),
            const CarInfoRow(
                title: 'Insurance policy number', value: '123 - 4567 - 8910'),
          ],
        ),
      );
}
