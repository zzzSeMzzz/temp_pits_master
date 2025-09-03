import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/core/data/extensions.dart';
import '../../../assets/colors/colors.dart';

class ProblemType extends StatelessWidget {
  const ProblemType({
    super.key,
    required this.name,
    required this.image,
    required this.isSelected,
    required this.onTap,
  });

  final bool isSelected;
  final String name;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 16),
      child: Column(
        /*mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,*/
        children: [
          SvgPicture.asset(
            image,
            colorFilter: isSelected ? const ColorFilter.mode(primaryColor, BlendMode.srcIn)
                : const ColorFilter.mode(Colors.black, BlendMode.srcIn)
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ],
      ).onTap(onTap),
    );
  }
}
