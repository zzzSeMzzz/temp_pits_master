import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/calls/presentation/sections/activities/widgets/service_info.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: fieldGrey),
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: white),
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
              child: Row(
                children: [
                  Text(
                    'Red Seat',
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
                      'not paid',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Oil and filter change',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ServiceInfo(name: 'Oil change 5 liters Texo Mobil 1'),
                  SizedBox(
                    height: 4,
                  ),
                  ServiceInfo(name: 'Oil filter replacement'),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: textGrey,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        'Total price',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const Spacer(),
                      Text(
                        '\$ 240',
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
