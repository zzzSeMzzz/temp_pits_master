import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';

class SparePartItem extends StatelessWidget {
  final String name;

  const SparePartItem({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: fieldGrey),
        padding: const EdgeInsets.all(8),
        child: Text(
        name,
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(fontWeight: FontWeight.w500, fontSize: 13),
        ),
      );
}
