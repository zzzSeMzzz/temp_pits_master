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
    required this.onSelectAlarm,
  });

  final bool isSelected;
  final String name;
  final String image;
  //final VoidCallback onTap;
  final Function(String) onSelectAlarm;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 16),
      //color: isSelected ? Colors.white : fieldGrey,
      decoration: BoxDecoration(
        color: !isSelected ? Colors.white : fieldGrey,
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            width: 40,
            height: 40,
            image,
            colorFilter: isSelected ? const ColorFilter.mode(primaryColor, BlendMode.srcIn)
                : const ColorFilter.mode(Colors.black, BlendMode.srcIn)
          ),
          const SizedBox(height: 16),
          Text(
            name,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 11,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ).onTap(() => onSelectAlarm(name)),
    );
  }
}
