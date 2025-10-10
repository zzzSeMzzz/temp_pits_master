import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

class ServiceInfo extends StatelessWidget {
  final String name;
  final bool iconVisible;

  const ServiceInfo({required this.name, Key? key, required this.iconVisible}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          if(iconVisible)
          SvgPicture.asset(
            AppIcons.checkCircle,
            width: 12,
            height: 12,
          ),
          if(iconVisible)
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          )
        ],
      );
}
