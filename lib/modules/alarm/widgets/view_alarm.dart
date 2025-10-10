import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/theme/theme.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';

import '../../../assets/colors/colors.dart';
import '../../../base/blur_container.dart';

class ViewAlarm extends StatefulWidget {
  const ViewAlarm({super.key});

  @override
  State<ViewAlarm> createState() => _ViewAlarmState();
}

class _ViewAlarmState extends State<ViewAlarm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: BlurredContainerDemo(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                child: Row(
                  children: [
                    SvgPicture.asset(AppIcons.icAlertBig),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "colócate en un lugar seguro fuera de la vía, enciende las luces de emergencia y usa el chaleco reflectante.".toUpperCase(),
                        style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              )),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppIcons.icCheckCircleFrame),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sutiación de emergencia", style: context.textTheme.bodyLarge),
                          Text("Falle de frenos", style: context.textTheme.displayLarge),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      color: fieldGrey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("00:45:13", style: context.textTheme.displayLarge!.copyWith(fontSize: 24)),
                              Text("Incidencia en curso", style: context.textTheme.bodyLarge!.copyWith(color: textGrey)),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          padding: const EdgeInsets.all(12.0),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(3),
                              ),
                            ),
                          child: SvgPicture.asset(AppIcons.icTimer)
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 60,
                    child: Placeholder(),
                  ),
                  Center(
                    child: DotsIndicator(
                      dotsCount: 4,
                      position: 1,
                      decorator: const DotsDecorator(
                        size: Size.square(6.0),
                        activeSize: Size.square(8.0),
                        shape: CircleBorder(
                          side: BorderSide(color: textGrey, width: 1),
                        ),
                        activeShape: CircleBorder(
                          side: BorderSide(color: Colors.black, width: 2.0),
                        ),
                        color: Colors.transparent, // делаем основной цвет прозрачным
                        activeColor: Colors.transparent,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 60,
                    child: Placeholder(),
                  ),
                  Center(
                    child: DotsIndicator(
                      dotsCount: 4,
                      position: 1,
                      decorator: const DotsDecorator(
                        size: Size.square(6.0),
                        activeSize: Size.square(8.0),
                        shape: CircleBorder(
                          side: BorderSide(color: textGrey, width: 1),
                        ),
                        activeShape: CircleBorder(
                          side: BorderSide(color: Colors.black, width: 2.0),
                        ),
                        color: Colors.transparent, // делаем основной цвет прозрачным
                        activeColor: Colors.transparent,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  WButton(
                    onTap: () {},
                    color: Colors.red,
                    svgAsset: AppIcons.phone,
                    height: 72,
                    textStyle: context.textTheme.displayMedium,
                    text: "Solicitar Llamada",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
