import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_detail/part/comment.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_detail/part/damage.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_detail/part/repair_header.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_detail/part/repair_info.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_detail/part/repair_status.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_detail/part/spare_parts.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_detail/part/total_price.dart';

class RepairDetailScreen extends StatelessWidget {
  const RepairDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10 + MediaQuery.of(context).padding.top,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.iArrowLeft,
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Repair Details',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 24, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Divider(
                color: divider,
                height: 1,
                thickness: 1,
              ),
              const SizedBox(
                height: 16,
              ),
              const  RepairHeader(),
              const Divider(
                color: divider,
                height: 32,
                thickness: 1,
              ),
              const   RepairComment(),
              const Divider(
                color: divider,
                height: 32,
                thickness: 1,
              ),
              const   RepairInfo(),
              const   Divider(
                height: 32,
                color: divider,
              ),
              const SpareParts(),
              const Divider(
                height: 32,
                color: divider,
              ),
              const  RepairDamagePart(),
              const  Divider(
                color: divider,
                height: 32,
              ),
              const  RepairStatus(),
              const Divider(
                color: divider,
                height: 32,
              ),
              const   RepairTotalPrice(),
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      );
}
