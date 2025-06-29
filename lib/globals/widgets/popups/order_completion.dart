import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';

showCompletionDialog(BuildContext context) {
  showDialog(context: context, builder: (c) => OrderCompletionDialog());
}

class OrderCompletionDialog extends StatelessWidget {
  const OrderCompletionDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AlertDialog(
        backgroundColor: black,
        content: Container(
          padding: EdgeInsets.symmetric(vertical: 66),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppIcons.checkCircle,
                    width: 56,
                    height: 56,
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Order complete',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 24),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Thank you for placing your order! Your order is now complete and we already started processing it.',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              const SizedBox(
                height: 40,
              ),
              WButton(
                color: white,
                borderRadius: 4,
                width: 160,
                onTap: () {
                  Navigator.pop(context);
                },
                height: 55,
                textColor: black,
                text: 'My order',
              )
            ],
          ),
        ),
      );
}
