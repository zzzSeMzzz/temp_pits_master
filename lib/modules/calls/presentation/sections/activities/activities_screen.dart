import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/base/try_again_widget.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/modules/alarm/data/model/alarm_model.dart';
import 'package:pits_app/modules/calls/presentation/sections/activities/bloc/activity_bloc.dart';
import 'package:pits_app/modules/calls/presentation/sections/activities/bloc/activity_event.dart';
import 'package:pits_app/modules/calls/presentation/sections/activities/bloc/activity_state.dart';
import 'package:pits_app/modules/calls/presentation/sections/activities/part/activity_list.dart';

import '../../../../../utils/utils.dart';

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
  Widget build(BuildContext context) => BlocConsumer<ActivityBloc, ActivityState>(
      listener: (context, state) {
        state.maybeWhen(
          /*error: (String message) {
            Utils.flushBarErrorMessage(message, context);
            context.read<ActivityBloc>().add(const ActivityEvent.cleared());
          },*/
          orElse: () {}
        );
      },
      builder: (context, state) {
        final bloc = context.read<ActivityBloc>();
          return Scaffold(
            backgroundColor: white,
            body: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  SizedBox(
                    height: 10 + MediaQuery.of(context).padding.top,
                  ),
                  Row(
                    children: [
                      Text(
                        'Activities',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontWeight: FontWeight.w700, fontSize: 24),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    height: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4), color: fieldGrey),
                    child: TabBar(
                        controller: tabController,
                        isScrollable: false,
                        labelPadding: EdgeInsets.zero,
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
                        tabs: const [
                          Tab(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("Todas"),
                            ),
                          ),
                          Tab(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("Pagados"),
                            ),
                          ),
                          Tab(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("No pagados"),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: state.maybeWhen(
                      success: (activities) => ActivityList(activities: activities),
                      error: (message) => Center(
                        child: TryAgainWidget(onTap: () {
                          bloc.add(const ActivityEvent.loadActivities());
                        }),
                      ),
                      noAuth: (message) => Center(
                          child: Text(message, style: context.textTheme.displayLarge!.copyWith(fontWeight: FontWeight.w500))
                      ),
                      orElse: () => const Center(child: CircularProgressIndicator())
                    ),
                  ),
                  const SizedBox(height: 16,),
                ],
              ),
            ),
          );
        }
  );
}
