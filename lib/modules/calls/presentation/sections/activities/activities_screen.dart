import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/modules/calls/presentation/sections/activities/part/activity_list.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: white,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(
                height: 10 + MediaQuery.of(context).padding.top,
              ),
              Row(
                children: [
                  // SvgPicture.asset(AppIcons.iArrowLeft,width: 24,height: 24,),

                  Text(
                    'Activities',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 24),
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: fieldGrey),
                child: TabBar(
                    controller: tabController,
                    unselectedLabelColor: black,
                    labelColor: white,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(4), color: black),
                    unselectedLabelStyle: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 12),
                    labelStyle: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 12),
                    tabs: [
                      Tab(
                        text: 'All',
                      ),
                      Tab(
                        text: 'Paid',
                      ),
                      Tab(
                        text: 'Not paid',
                      ),
                    ]),
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(child: ActivityList()),
              SizedBox(height: 16,),
            ],
          ),
        ),
      );
}
