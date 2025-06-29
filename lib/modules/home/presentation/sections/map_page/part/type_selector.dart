import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';

class TypeSelector extends StatefulWidget {
  const TypeSelector({Key? key}) : super(key: key);

  @override
  State<TypeSelector> createState() => _TypeSelectorState();
}

class _TypeSelectorState extends State<TypeSelector> {
  int page = 0;

  Widget box(int index, String title) {
    return GestureDetector(
        onTap: () {
          setState(() {
            page = index;
          });
        },
        child: AnimatedContainer(
          margin: const EdgeInsets.only(right: 10),
          height: 36,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: page == index ? black : white),
          duration: const Duration(milliseconds: 200),
          width: 96,
          child: Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: page == index ? white : black),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) => Container(
        child: SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              box(0, 'Tire fitting'),
              box(1, 'Car service'),
              box(2, 'Detailing'),
              box(3, 'Car wash'),
            ],
          ),
        ),
      );
}
