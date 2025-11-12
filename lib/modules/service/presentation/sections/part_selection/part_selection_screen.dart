import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/navigation/presentation/navigator.dart';
import 'package:pits_app/modules/service/presentation/sections/service_selection/service_selection_screen.dart';
import 'package:pits_app/modules/service/presentation/widgets/selection_box.dart';

class PartSelectionScreen extends StatelessWidget {
  const PartSelectionScreen({Key? key, this.currentCarNumber}) : super(key: key);

  final String? currentCarNumber;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: white,
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 13 + MediaQuery.of(context).padding.top,
              ),
              GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    AppIcons.arrowLeft,
                    width: 24,
                    height: 24,
                    color: mainDark,
                  )),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Select repair\ncondition',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 24, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Expanded(
                    child: SelectionBox(
                        onTap: () {
                          Navigator.of(context, rootNavigator: true)
                              .push(fade(page: ServiceSelectionScreen(
                            carNumber: currentCarNumber, takeCarAccount: 'go_with_car_it_self',
                          )));
                        },
                        title: 'Llevar el coche',
                        svgIcon: AppIcons.typeCar),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: SelectionBox(
                        onTap: () {
                          Navigator.of(context, rootNavigator: true)
                              .push(fade(page: ServiceSelectionScreen(
                            carNumber: currentCarNumber, takeCarAccount: 'take_with_crane',
                          )));
                        },
                        title: 'Recogida con grúa',
                        svgIcon: AppIcons.typeCrane),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: SelectionBox(
                        onTap: () {
                          Navigator.of(context, rootNavigator: true)
                              .push(fade(page: ServiceSelectionScreen(
                            carNumber: currentCarNumber, takeCarAccount: 'the_workshop_goes_for_the_car',
                          )));
                        },
                        title: 'Que lo recojan',
                        svgIcon: AppIcons.icTakeCar),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: SelectionBox(
                        onTap: () {
                          Navigator.of(context, rootNavigator: true)
                              .push(fade(page: ServiceSelectionScreen(
                            carNumber: currentCarNumber, takeCarAccount: 'by_insurance',
                          )));
                        },
                        title: 'Por aseguradora',
                        svgIcon: AppIcons.icByeInsures),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              WButton(
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(fade(page: ServiceSelectionScreen(
                    carNumber: currentCarNumber, takeCarAccount: '',
                  )));
                },
                height: 55,
                borderRadius: 4,
                textColor: white,
                text: 'Continue',
              ),
            ],
          ),
        ),
      );
}
