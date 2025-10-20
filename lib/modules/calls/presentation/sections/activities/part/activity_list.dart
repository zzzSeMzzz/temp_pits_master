import 'package:flutter/cupertino.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/modules/alarm/data/model/alarm_model.dart';
import 'package:pits_app/modules/calls/presentation/sections/activities/widgets/activity_item.dart';

class ActivityList extends StatefulWidget {
  const ActivityList({super.key, required this.activities});

  final List<AlarmModel> activities;

  @override
  State<ActivityList> createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList> {
  @override
  Widget build(BuildContext context) {
    return widget.activities.isNotEmpty ? ListView.separated(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      separatorBuilder: (context, index) =>
      const SizedBox(
        height: 8,
      ),
      itemBuilder: (context, index) =>
          ActivityItem(activity: widget.activities[index]),
      itemCount: widget.activities.length,
    ) : Center(
      child: Text("Emergencia no encontrada", style: context.textTheme.displayLarge!.copyWith(
        fontWeight: FontWeight.w500
      )),
    );
  }
}

