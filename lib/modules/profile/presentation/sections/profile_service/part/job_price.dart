import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/core/data/extensions.dart';

import '../../../../../../assets/colors/colors.dart';

class JobPrice extends StatelessWidget {
  const JobPrice({super.key, required this.title,
    required this.description, required this.icon, required this.price});

  final String title, description, icon, price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: DottedBorder(
        options: const RoundedRectDottedBorderOptions(
          radius: Radius.circular(15),
          dashPattern: [6, 6],
          strokeWidth: 2,
          color: Color(0xFF5691F9),
          padding: EdgeInsets.all(12),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorOlive,
              ),
              padding: const EdgeInsets.all(6.0),
              child: Center(child: Text(icon, style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w400),)),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: context.textTheme.displaySmall!.copyWith(fontSize: 12, color: Colors.black),),
                Text(description, style: context.textTheme.bodyLarge!.copyWith(fontSize: 10, color: Colors.black),)
              ],
            ),
            const SizedBox(width: 10),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorOlive,
              ),
              padding: const EdgeInsets.all(6.0),
              child: Center(child: Text("$price€", style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),)),
            ),
          ],
        )
      ),
    );
  }
}
