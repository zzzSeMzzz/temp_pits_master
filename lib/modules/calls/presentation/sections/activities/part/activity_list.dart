import 'package:flutter/cupertino.dart';
import 'package:pits_app/modules/calls/presentation/sections/activities/widgets/activity_item.dart';

class ActivityList extends StatelessWidget {
  const ActivityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.separated(
    padding: EdgeInsets.zero,
    scrollDirection: Axis.vertical,
    separatorBuilder: (context, index) => const SizedBox(
      height: 8,
    ),
    itemBuilder: (context, index) => const ActivityItem(),
    itemCount: 12,
  );
}
