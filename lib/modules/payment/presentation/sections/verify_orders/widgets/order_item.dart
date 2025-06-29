import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/modules/payment/domain/entity/order_entity.dart';
import 'package:pits_app/modules/payment/presentation/sections/verify_orders/widgets/detail_row.dart';

class OrderItem extends StatelessWidget {
  final OrderEntity entity;

  const OrderItem({required this.entity, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            color: fieldGrey, borderRadius: BorderRadius.circular(4)),
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.orderSample,
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  entity.name,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
                )
              ],
            ),
            const Divider(
              color: divider,
              height: 16,
              thickness: 1,
            ),
            DetailRow(title: 'Quantity', value: entity.quantity.toString()),
            DetailRow(title: 'Price', value: '\$ ${entity.price}'),
            DetailRow(title: 'Discount', value: entity.discount.toString()),
            DetailRow(title: 'Total', value: '\$ ${entity.total}'),
          ],
        ),
      );
}
