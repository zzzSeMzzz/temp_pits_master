import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/widgets/car_brand_item.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/widgets/car_category_item.dart';

class ProfileCarCategories extends StatelessWidget {
  const ProfileCarCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: fieldGrey),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.carType,
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Car brands',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 20),
                )
              ],
            ),
           const SizedBox(
              height: 9,
            ),
            const   Divider(
              color: Color(0xffE1E6ED),
              height: 1,
            ),
            const  SizedBox(
              height: 24,
            ),
            Container(
              height: 184,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const CarCategoryItem(
                  title: 'General mechanics',
                  icon: AppIcons.testCategory,
                ),
                itemCount: 18,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 120,
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 50),
              ),
            )
          ],
        ),
      );
}
