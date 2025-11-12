import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/modules/navigation/presentation/navigator.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/bloc/profile_services_bloc.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_selection/repair_selection_screen.dart';
import 'package:pits_app/modules/service/presentation/widgets/selection_box.dart';
import 'package:pits_app/utils/action_status.dart';

class ProfileServices extends StatelessWidget {
  const ProfileServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
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
                  'Services',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              height: 21,
            ),
            Container(
              height: 328,
              child: BlocBuilder<ProfileServicesBloc, ProfileServicesState>(
                builder: (context, state) {
                  if (state.status == ActionStatus.inProcess) {
                    return const Center(
                      child: CupertinoActivityIndicator(),
                    );
                  } else {
                    return GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => SelectionBox(
                          onTap: () {
                            Navigator.push(context,
                                fade(page: const RepairSelectionScreen(
                                  services: {}, takeCarAccount: '',
                                )));
                          },
                          title: state.services[index].title,
                          svgIcon: AppIcons.serviceBalance),
                      itemCount: state.services.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: 160,
                              crossAxisCount: 2,
                              childAspectRatio: 1,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8),
                    );
                  }
                },
              ),
            )
          ],
        ),
      );
}
