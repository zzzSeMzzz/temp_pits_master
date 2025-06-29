import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/widgets/car_brand_item.dart';

class ProfileInsurers extends StatelessWidget {
  const ProfileInsurers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(16),margin: EdgeInsets.symmetric(horizontal: 24),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4), color: fieldGrey),
    child: Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              AppIcons.insurer,
              width: 24,
              height: 24,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              'Insurers',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 20),
            )
          ],
        ),
        SizedBox(
          height: 9,
        ),
        Divider(
          color: Color(0xffE1E6ED),
          height: 1,
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          height: 80,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
            const CarBrandItem(image: AppImages.testInsurer, title: 'Direct Seguros'),
            itemCount: 18,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 130,
                crossAxisCount: 2,

                crossAxisSpacing: 16,
                mainAxisSpacing: 60),
          ),
        )
      ],
    ),
  );
}
