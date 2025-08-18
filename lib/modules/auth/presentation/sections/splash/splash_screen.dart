import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/core/data/singletons/storage.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/auth_screen.dart';
import 'package:pits_app/modules/auth/presentation/sections/onboarding/onboarding_screen.dart';
import 'package:pits_app/modules/navigation/presentation/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var isFirst = StorageRepository.getBool('isFirst', defValue: true);
    Timer(const Duration(seconds: 2), () {
      if(isFirst){
        Navigator.push(
            context, CupertinoPageRoute(builder: (c) => const OnboardingScreen()));
      } else {
        // Navigator.push(
        //     context, CupertinoPageRoute(builder: (c) => const NavigationScreen()));
        Navigator.push(
            context, CupertinoPageRoute(builder: (c) => const AuthScreen()));
      }

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: primaryColor,
        body: Stack(
          children: [
            // Positioned.fill(
            //     child: Column(
            //   children: [
            //     const Spacer(),
            //     Text(
            //       'Repair your car\njust in record time',
            //       style: Theme.of(context)
            //           .textTheme
            //           .displayMedium!
            //           .copyWith(fontSize: 16),
            //     ),
            //     SizedBox(
            //       height: 60 + MediaQuery.of(context).padding.bottom,
            //     )
            //   ],
            // )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.splashLogo,
                      height: 142,
                      width: MediaQuery.of(context).size.width * 0.47,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Welcome to Pits',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 24),
                ),
                const SizedBox(height: 20,),
                Text(
                  'Muévete Seguro',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      );
}
