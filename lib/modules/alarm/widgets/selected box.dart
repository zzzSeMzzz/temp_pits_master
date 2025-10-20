

import 'package:flutter/material.dart';

class SelectedBox extends StatelessWidget {

  final GestureTapCallback? onTap;
  final bool isSelected;
  final String title;
  final double width;
  final double height;

  const SelectedBox({super.key,
    required this.onTap,
    required this.isSelected,
    required this.title,
    this.width = 146,
    this.height = 50,
  });



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        margin: const EdgeInsets.only(right: 10),
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: isSelected ? Colors.black : Colors.white,
            border: Border.all(
              color: Colors.black, // Border color
              width: 1.0, // Border width
              style: BorderStyle.solid, // Border style (solid, dashed, dotted)
            )
        ),
        duration: const Duration(milliseconds: 200),
        width: width,
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: isSelected ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}