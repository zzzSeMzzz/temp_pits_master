import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_images.dart';

class MapMark extends StatelessWidget {

  const MapMark({
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    height: 40,width: 120,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(30),color: white, boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(0.1),
          ),
          BoxShadow(
              color: Color(0xff000000).withOpacity(0.1),
              blurRadius: 7,
              offset: Offset(0, 3)),
        ]),
        padding:const  EdgeInsets.all(4),
        child: Row(
          children: [
            Image.asset(
              AppImages.wrenchLocation,
              width: 30,
              height: 30,
            ),
            const SizedBox(
              width: 4,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  '4.4',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 13),
                )
              ],
            )
          ],
        ),
      );
}
