import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/modules/home/presentation/sections/home/widgets/car_info_bottomsheet.dart';

import '../../../../../../base/safe_image.dart';
import '../../../../../car/presentation/sections/add_car/data/model/vehicle.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key, required this.vehicle}) : super(key: key);

  final Vehicle? vehicle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: fieldGrey,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 10, left: 24, right: 24,bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My cars',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                showCarInfoBottomSheet(context);
              },
              child: Center(
                child: SafeNetworkImage(
                    url: vehicle?.image,
                    fallbackAsset: AppImages.carNoAuth,
                    width: double.maxFinite,
                    height: double.infinity,
                    fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override

  Size get preferredSize => const Size.fromHeight(170);
}
