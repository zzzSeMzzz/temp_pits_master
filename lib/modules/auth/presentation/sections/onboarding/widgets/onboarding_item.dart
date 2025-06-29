import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  final String image;

  final String title;
  final String desc;

  const OnboardingItem(
      {required this.image, required this.title, required this.desc, Key? key})
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
              height: 50,
            ),
            Text(
              desc,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 16),
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
