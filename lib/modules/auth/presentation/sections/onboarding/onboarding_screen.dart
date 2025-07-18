import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/core/data/singletons/storage.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/auth_screen.dart';
import 'package:pits_app/modules/auth/presentation/sections/onboarding/widgets/onboarding_item.dart';
import 'package:pits_app/modules/auth/presentation/sections/onboarding/widgets/onboarding_last.dart';
import 'package:pits_app/modules/navigation/presentation/home.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController pageController;

  int page = 0;

  Widget dotContainer(int index) {
    return AnimatedContainer(
        margin: EdgeInsets.only(right: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: index == page ? primaryColor : white),
        height: 5,
        width: index == page ? 32 : 16,
        duration: Duration(milliseconds: 150));
  }

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: PageView(
                onPageChanged: (newIndex) {
                  setState(() {
                    page = newIndex;
                  });
                },
                controller: pageController,
                children: [
                  OnboardingItem(
                      image: AppImages.onboarding1,
                      title: 'The best repair',
                      desc: 'Repair your car with Guarantee'),
                  OnboardingItem(
                      image: AppImages.onboarding2,
                      title: 'Know the price',
                      desc: 'The best price'),
                  OnboardingItem(
                      image: AppImages.onboarding3,
                      title: 'Be connected with your car',
                      desc: 'Your recive the notifications from your car'),
                  OnboardingItemLast(
                    onTap: () async {
                      await StorageRepository.putBool(
                          key: 'isFirst', value: false);
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (c) => NavigationScreen()));
                    },
                    image: AppImages.onboarding4,
                    title: 'Start the road',
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 36 + MediaQuery.of(context).padding.bottom,
                right: 0,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (index) => dotContainer(index)),
                )),
          ],
        ),
      );
}
