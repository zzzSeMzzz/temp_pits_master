import 'package:flutter/cupertino.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/modules/payment/domain/entity/payment_entity.dart';
import 'package:pits_app/modules/payment/presentation/sections/select_payment/widgets/payment_item.dart';

class PaymentsList extends StatelessWidget {
  const PaymentsList({Key? key}) : super(key: key);

  static const List<PaymentEntity> list = [
    PaymentEntity(
      title: 'Paypal',
      image: AppImages.paypal,
      desc: 'If you want the traditional good old school method',
    ),
    PaymentEntity(
      title: 'Stripe',
      image: AppImages.stripe,
      desc: 'If you want the traditional good old school method',
    ),
    PaymentEntity(
      title: 'Visa',
      image: AppImages.visa,
      desc: 'If you want the traditional good old school method',
    ),
    PaymentEntity(
      title: 'Mastercard',
      image: AppImages.mastercard,
      desc: 'If you want the traditional good old school method',
    ),
    PaymentEntity(
      title: 'Cash On Delivery',
      image: AppImages.cash,
      desc: 'If you want the traditional good old school method',
    ),
    PaymentEntity(
      title: 'Bank transfer',
      image: AppImages.transfer,
      desc: 'If you want the traditional good old school method',
    ),
  ];

  @override
  Widget build(BuildContext context) => GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 160,
            childAspectRatio: 1),
        children: List.generate(
            list.length,
            (index) => PaymentItem(
                  entity: list[index],
                  onTap: () {},
                )),
      );
}
