import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/calls/presentation/sections/activities/activities_screen.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/bloc/single/service_single_bloc.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/widgets/info_row.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/widgets/info_row_extra.dart';
import 'package:pits_app/modules/navigation/presentation/navigator.dart';
import 'package:pits_app/modules/payment/presentation/sections/verify_orders/verify_orders_screen.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile/profile_screen.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/profile_service_screen.dart';
import 'package:pits_app/modules/service/presentation/sections/part_selection/part_selection_screen.dart';
import 'package:pits_app/utils/action_status.dart';

showInfoBottomSheet(BuildContext context, ServiceSingleBloc serviceSingleBloc) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (c) => BlocProvider.value(
          value: serviceSingleBloc, child: const InfoBottomSheet()));
}

class InfoBottomSheet extends StatelessWidget {
  const InfoBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    height: MediaQuery.of(context).size.height * 0.8,
    child: BlocBuilder<ServiceSingleBloc, ServiceSingleState>(
      builder: (context, state) {
        if (state.actionStatus == ActionStatus.inProcess) {
          return Container(
            color: Colors.white,
            child: const Center(
              child: CupertinoActivityIndicator(),
            ),
          );
        } else {
          return Container(
            child: Stack(
              children: [
                Column(
                  children: [
                    /*Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: white),
                            padding: const EdgeInsets.all(8),
                            child: SvgPicture.asset(
                              AppIcons.arrowLeft,
                              width: 24,
                              height: 24,
                            ),
                          ),
                        )
                      ],
                    ),*/
                    const SizedBox(
                      height: 56,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 56, 24, 16),
                      decoration: const BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.serviceSingle.name,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            state.serviceSingle.desc,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Divider(
                            height: 1,
                            thickness: 1,
                            color: divider,
                          ),
                          InfoRow(
                              title: 'Phone',
                              icon: AppIcons.phone,
                              desc: '+${state.serviceSingle.phone}'),
                          const Divider(
                            height: 1,
                            thickness: 1,
                            color: divider,
                          ),
                          const InfoRow(
                              title: 'Distance',
                              icon: AppIcons.repairFlame,
                              desc: '6,2 km'),
                          const Divider(
                            height: 1,
                            thickness: 1,
                            color: divider,
                          ),
                          InfoRowExtra(
                              title: 'Address',
                              icon: AppIcons.running,
                              desc: state.serviceSingle.address),
                          const Divider(
                            height: 1,
                            thickness: 1,
                            color: divider,
                          ),
                          InfoRow(
                              iconBoxColor: Colors.green,
                              title: state.serviceSingle.status,
                              icon: AppIcons.repairFlame,
                              desc: 'none'),
                          const Divider(
                            height: 1,
                            thickness: 1,
                            color: divider,
                          ),
                          const Divider(
                            height: 1,
                            thickness: 1,
                            color: divider,
                          ),
                          const InfoRowExtra(
                              title: 'Categories',
                              icon: AppIcons.wallet,
                              desc: 'none'),
                          const Divider(
                            height: 1,
                            thickness: 1,
                            color: textGrey,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Range',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    state.serviceSingle.priceRange,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24),
                                  )
                                ],
                              ),
                              const Spacer(),
                              WButton(
                                width: 160,
                                onTap: () {
                                  Navigator.push(context, fade(page: PartSelectionScreen()));
                                },
                                height: 55,
                                borderRadius: 4,
                                textColor: white,
                                text: 'Send request',
                              ),
                            ],
                          ),
                          SizedBox(
                            height:
                            30 + MediaQuery.of(context).padding.bottom,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                    left: 20,
                    top: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            fade(
                                page: ProfileServiceScreen(
                                  entity: state.serviceSingle,
                                )));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: red),
                        width: 100,
                        height: 100,
                        child: state.serviceSingle.image.isNotEmpty
                            ? ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            state.serviceSingle.image,
                            fit: BoxFit.cover,
                          ),
                        )
                            : const SizedBox(),
                      ),
                    )
                ),
              ],
            ),
          );
        }
      },
    ),
  );
}
