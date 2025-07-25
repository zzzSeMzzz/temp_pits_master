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
      backgroundColor: Colors.white,
      context: context,
      isScrollControlled: true,
      builder: (c) => BlocProvider.value(
          value: serviceSingleBloc, child: const InfoBottomSheet()));
}

class InfoBottomSheet extends StatelessWidget {
  const InfoBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: BlocBuilder<ServiceSingleBloc, ServiceSingleState>(
          builder: (context, state) {
            if (state.actionStatus == ActionStatus.inProcess || state.actionStatus == ActionStatus.pure) {
              return Container(
                color: Colors.white,
                child: const Center(
                  child: CupertinoActivityIndicator(),
                ),
              );
            } else if (state.actionStatus == ActionStatus.isFailure) {
              return Container(
                color: Colors.white,
                child: const Center(
                  child: Text("Failed load service information"),
                ),
              );
            } else {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: red),
                                    width: 44,
                                    height: 44,
                                    child: state.serviceSingle.image.isNotEmpty
                                        ? ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Image.network(
                                        state.serviceSingle.image,
                                        fit: BoxFit.cover,
                                      ),
                                    ) : const SizedBox(),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
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
                                        state.serviceSingle.address,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Container(
                                        height: 12,
                                        width: 12,
                                        decoration:
                                        const BoxDecoration(shape: BoxShape.circle, color: Colors.green),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        state.serviceSingle.status,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(fontWeight: FontWeight.w400, fontSize: 13),
                                      ),
                                    ],
                                  )
                                ],
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
                              const InfoRowExtra(
                                  title: 'Type of work',
                                  icon: AppIcons.running,
                                  desc: 'none'),
                              const Divider(
                                height: 1,
                                thickness: 1,
                                color: textGrey,
                              ),
                              const InfoRow(
                                  title: 'Time',
                                  icon: AppIcons.time,
                                  desc: '2 days'),
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
                                  title: 'Payment type',
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
                                        'Price',
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
                                      Navigator.push(context, fade(page: const PartSelectionScreen()));
                                    },
                                    height: 55,
                                    borderRadius: 4,
                                    textColor: white,
                                    text: 'Buy',
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).padding.bottom,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    /*Positioned(
                        right: 20,
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
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image.network(
                                      state.serviceSingle.image,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : const SizedBox(),
                          ),
                        )),*/
                  ],
                ),
              );
            }
          },
        ),
      );
}
