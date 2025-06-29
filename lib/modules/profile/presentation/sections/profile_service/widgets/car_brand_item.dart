import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

class CarBrandItem extends StatelessWidget {
  final String image;
  final String title;

  const CarBrandItem({required this.title, required this.image, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Row(
          children: [
            Image.asset(
              image,
              width: 32,
              height: 32,
              fit: BoxFit.cover,
            ),
          const   SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 13),
              ),
            )
          ],
        ),
      );
}
