import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/parts/fields.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/widgets/auth_field.dart';

class PaymentInfoScreen extends StatelessWidget {
  const PaymentInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 13 + MediaQuery.of(context).padding.top,
              ),
              GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    AppIcons.iArrowLeft,
                    width: 24,
                    height: 24,
                  )),
              SizedBox(
                height: 35,
              ),
              AuthField(
                prefixIconPath: AppIcons.personOutline,
                hint: 'Name',
              ),
              SizedBox(
                height: 8,
              ),
              AuthField(
                prefixIconPath: AppIcons.mail,
                hint: 'Card Number',
              ),
              SizedBox(
                height: 8,
              ),
              AuthField(
                prefixIconPath: AppIcons.lock,
                hint: 'CVI',
              ),
              SizedBox(
                height: 8,
              ),
              AuthField(
                prefixIconPath: AppIcons.phone,
                hint: 'Phone',
              ),
              SizedBox(
                height: 50,
              ),
              WButton(
                height: 55,
                onTap: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                text: 'Pay \$237.45',
                borderRadius: 4,
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                'Proceed to payment method',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 24),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Ut sodales, ex sit amet consectetur accumsan, nibh ex sollicitudin metus.',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ],
          ),
        ),
      );
}
