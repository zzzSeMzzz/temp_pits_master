import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
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
            ),
            const SizedBox(height: 20),
            BlurredContainerDemo()
          ],
        ),
      ),
    );
  }
}
