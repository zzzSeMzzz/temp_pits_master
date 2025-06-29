import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/navigation/presentation/navigator.dart';
import 'package:pits_app/modules/payment/presentation/sections/select_payment/select_payment_screen.dart';
import 'package:pits_app/modules/payment/presentation/sections/verify_orders/parts/orders.dart';

class VerifyOrdersScreen extends StatefulWidget {
  const VerifyOrdersScreen({Key? key}) : super(key: key);

  @override
  State<VerifyOrdersScreen> createState() => _VerifyOrdersScreenState();
}

class _VerifyOrdersScreenState extends State<VerifyOrdersScreen> {

  bool isAgree=false;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: white,
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24 + MediaQuery.of(context).padding.top,
              ),
              Text(
                'Verify your order',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 24),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Ut sodales, ex sit amet consectetur accumsan, nibh ex sollicitudin metus.',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Checkbox(value: isAgree, onChanged: (value) {
                    setState(() {
                      isAgree=value!;
                    });
                  }),
                  const SizedBox(
                    width: 10,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'I agree to the ',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontWeight: FontWeight.w400, fontSize: 14)),
                    TextSpan(
                        text: 'Store Terms ',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: blue)),
                  ]))
                ],
              ),
              Expanded(child: OrdersList()),
              SizedBox(
                height: 32,
              ),
              WButton(
                margin: EdgeInsets.only(
                    bottom: 36 + MediaQuery.of(context).padding.bottom),
                onTap: () {
                  Navigator.push(context, fade(page: SelectPaymentScreen()));
                },
                height: 55,
                borderRadius: 4,
                textColor: white,
                text: 'Continue',
              )
            ],
          ),
        ),
      );
}
