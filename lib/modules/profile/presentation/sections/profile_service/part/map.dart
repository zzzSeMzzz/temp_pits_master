import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';

class ProfileMapPoint extends StatelessWidget {
  const ProfileMapPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        height: 240,
        child: Stack(
          children: [
            Positioned.fill(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),


              ),
                  child: Image.asset(AppImages.mapTestProfile,fit: BoxFit.cover,),
            )),
            Positioned(
                right: 16,
                bottom: 16,
                child: WButton(padding: EdgeInsets.zero,borderRadius: 4,
                  onTap: () {},
                  color: Colors.transparent,
                  width: 110,
                  height: 40,
                  text: 'Get Directions',
                  textColor: black,
                  border: Border.all(color: black),
                ))
          ],
        ),
      );
}
