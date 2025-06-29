import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';

class ProfileTabBar extends StatelessWidget {
  final TabController tabController;

  const ProfileTabBar({required this.tabController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(margin: EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: black,
          controller: tabController,
          labelColor: black,
          unselectedLabelColor: textGrey,
          tabs: [
            Text('Profile'),
            Text('Reviews'),
            Text('Events'),
            Text('Jobs'),
          ],
        ),
      );
}
