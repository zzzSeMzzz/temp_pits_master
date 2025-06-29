import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/bloc/profile_services_bloc.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/bloc/profile_services_bloc.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/widgets/car_brand_item.dart';
import 'package:pits_app/utils/action_status.dart';

class ProfileCarBrands extends StatelessWidget {
  const ProfileCarBrands({Key? key}) : super(key: key);

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
              child: BlocBuilder<ProfileServicesBloc, ProfileServicesState>(
                builder: (context, state) {
                  if (state.status == ActionStatus.inProcess) {
                    return const Center(
                      child: CupertinoActivityIndicator(),
                    );
                  } else {
                    return GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CarBrandItem(
                          image: AppImages.testBrand,
                          title: state.services[index].title),
                      itemCount: state.services.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: 150,
                              crossAxisCount: 2,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 60),
                    );
                  }
                },
              ),
            )
          ],
        ),
      );
}
