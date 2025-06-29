import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/modules/payment/domain/entity/payment_entity.dart';

class PaymentItem extends StatelessWidget {
  final VoidCallback onTap;
  final PaymentEntity entity;

  const PaymentItem({required this.entity, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.fromLTRB(15, 23, 15, 14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: fieldGrey),
        child: Column(
          children: [
            Image.asset(
              entity.image,
              height: 40,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              entity.title,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 14),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    entity.desc,
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 11, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
