import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/core/data/extensions.dart';
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
    height: MediaQuery.of(context).size.height * 0.86,
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
          return Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
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
                            ),
                            Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                width: 150,
                                child: Expanded(
                                  child: Text(state.serviceSingle.name,
                                      style: Theme.of(context).textTheme
                                          .labelLarge!.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Colors.black
                                      )
                                  ),
                                )
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Price range',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    color: textGrey,
                                  ),
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
                            const SizedBox(width: 30),
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: SvgPicture.asset(
                                      AppIcons.star,
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " ${state.serviceSingle.rating.toString()}",
                                    style: Theme.of(context).textTheme
                                        .displayLarge!.copyWith(
                                      color: textGrey,
                                      fontSize: 26
                                    )
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            WButton(
                              width: 130,
                              onTap: () {
                                Navigator.push(context, fade(page: const PartSelectionScreen()));
                              },
                              height: 55,
                              borderRadius: 4,
                              textColor: white,
                              text: 'Send request',
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: fieldGrey,
                              borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: SvgPicture.asset(
                                            AppIcons.alarm,
                                            width: 24,
                                            height: 24,
                                          ),
                                        ),
                                        TextSpan(
                                            text: " Opens in a few minutes",
                                            style: Theme.of(context).textTheme
                                                .displayLarge!.copyWith(
                                                color: textGreen,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 18
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                      "Open hours today: 09:00 - 21:00",
                                    style: Theme.of(context).textTheme
                                        .displayMedium!.copyWith(
                                        color: textGrey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14
                                    ),
                                  )
                                ],
                              ),
                              const Spacer(),
                              SvgPicture.asset(AppIcons.arrowDownCircle),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: fieldGrey,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              InfoRow(
                                  title: state.serviceSingle.phone,
                                  icon: AppIcons.phone,
                              ),
                              InfoRow(
                                title: state.serviceSingle.address,
                                icon: AppIcons.place,
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  // Action to perform when the button is pressed
                                },
                                style: ButtonStyle(
                                  side: WidgetStateProperty.all(
                                    const BorderSide(color: Colors.black, width: 1.0),
                                  ),
                                  shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  // Customize padding
                                  padding: WidgetStateProperty.all(
                                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
                                  ),
                                ),
                                child: Text('Get Directions', style: Theme.of(context).textTheme
                                    .displayLarge!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16
                                )),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          height: 250,
                          width: double.infinity,
                          child: state.serviceSingle.cover.isNotEmpty
                              ? ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              state.serviceSingle.cover,
                              fit: BoxFit.cover,
                            ),
                          ) : const SizedBox(),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ],
          );
        }
      },
    ),
  );
}