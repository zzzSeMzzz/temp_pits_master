import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';

class OnboardingItemLast extends StatelessWidget {
  final String image;
  final VoidCallback onTap;

  final String title;

  const OnboardingItemLast(
      {required this.image, required this.title, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xff121212),
                    Color(0xff121212).withOpacity(0),
                  ])),
              height: 340,
            )),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                    Color(0xff121212),
                    Color(0xff121212).withOpacity(0),
                  ])),
              height: 341,
            )),
        Positioned.fill(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 24),
            ),
            SizedBox(
              height: 32,
            ),
            WButton(
              color: primaryColor,
              height: 50,
              textColor: white,
              text: 'Start',
              onTap: onTap,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            SizedBox(
              height: 68 + MediaQuery.of(context).padding.bottom,
            )
          ],
        )),
      ],
    );
  }
}
