import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/modules/alarm/data/model/alarm_model.dart';
import 'package:pits_app/modules/calls/presentation/sections/activities/widgets/service_info.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem({Key? key, required this.activity}) : super(key: key);

  final AlarmModel activity;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: fieldGrey),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: white),
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
              child: Row(
                children: [
                  Text(
                    activity.emergency ?? "Unknown emergency",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: fieldGrey),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'No pagado',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if(!activity.notes.isNullOrEmpty())
                  Text(
                    activity.notes ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ServiceInfo(name: 'Fetcha uy Hora: ${activity.timestamp}', iconVisible: false),
                  const SizedBox(
                    height: 4,
                  ),
                  ServiceInfo(name: 'Ubicación: ${activity.lat} ${activity.lon}', iconVisible: false),
                  const SizedBox(
                    height: 16,
                  ),
                  const Divider(
                    height: 1,
                    thickness: 1,
                    color: textGrey,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        'Precio',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const Spacer(),
                      Text(
                        '€€',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
}
