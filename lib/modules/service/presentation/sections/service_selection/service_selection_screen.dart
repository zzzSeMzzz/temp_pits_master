import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/navigation/presentation/navigator.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_selection/repair_selection_screen.dart';
import 'package:pits_app/modules/service/presentation/widgets/selection_box.dart';

class ServiceSelectionScreen extends StatelessWidget {
  const ServiceSelectionScreen({Key? key}) : super(key: key);



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
                    'Servicios (multiselección)',
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
              Expanded(
                child: GridView.builder(
                    itemCount: 17,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 160,
                            childAspectRatio: 1,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return SelectionBox(
                          onTap: () {
                            Navigator.push(context, fade(page: const RepairSelectionScreen()));
                          },
                          title: 'Service',
                          svgIcon: AppIcons.serviceBalance
                      );
                    }),
              ),
              SizedBox(
                height: 30 + MediaQuery.of(context).padding.bottom,
              ),
            ],
          ),
        ),
      );
}
