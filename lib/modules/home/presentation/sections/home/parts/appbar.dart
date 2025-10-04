import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/modules/home/presentation/sections/home/widgets/car_info_bottomsheet.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key, required this.isNoCarVisible}) : super(key: key);

  final bool isNoCarVisible;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: fieldGrey,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 10, left: 24, right: 24),
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
          isNoCarVisible ?
          GestureDetector(
            onTap: () {
              //showCarInfoBottomSheet(context);
            },
            child: Image.asset(
              AppImages.carNoAuth,
              width: double.maxFinite,
              height: 124,
              fit: BoxFit.cover,
            ),
          ) : const SizedBox()
        ],
      ),
    );
  }

  @override

  Size get preferredSize => isNoCarVisible ? const Size.fromHeight(180) : const Size.fromHeight(56);
}
