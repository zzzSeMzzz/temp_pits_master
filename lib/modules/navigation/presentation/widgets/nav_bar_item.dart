import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/modules/navigation/domain/entities/navbar.dart';

class NavItemWidget extends StatelessWidget {
  final int currentIndex;
  final NavBar navBar;

  const NavItemWidget({
    required this.navBar,
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 11),
      child: Column(
        children: [
          Center(
            child: navBar.isMultipleIconTab ? SvgPicture.asset(
              currentIndex == navBar.id ? navBar.icon : navBar.inactiveIcon!,
              height: 24,
              width: 24,
            ) :
            SvgPicture.asset(
              navBar.icon,
              colorFilter: currentIndex == navBar.id
                  ? const ColorFilter.mode(primaryColor, BlendMode.srcIn)
                  : const ColorFilter.mode(textGrey, BlendMode.srcIn),
              height: 24,
              width: 24,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              navBar.title,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: currentIndex == navBar.id ? primaryColor : textGrey,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
