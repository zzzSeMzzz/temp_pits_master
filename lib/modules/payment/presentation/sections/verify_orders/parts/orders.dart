import 'package:flutter/cupertino.dart';
import 'package:pits_app/modules/payment/domain/entity/order_entity.dart';
import 'package:pits_app/modules/payment/presentation/sections/verify_orders/widgets/order_item.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({Key? key}) : super(key: key);

  static const List<OrderEntity> list = [
    OrderEntity(quantity: 1,price: 23.43,discount: 1,total: 22.42,name: 'Washing service'),
    OrderEntity(quantity: 1,price: 23.43,discount: 1,total: 22.42,name: 'Washing service'),
    OrderEntity(quantity: 1,price: 23.43,discount: 1,total: 22.42,name: 'Washing service'),
    OrderEntity(quantity: 1,price: 23.43,discount: 1,total: 22.42,name: 'Washing service'),
    OrderEntity(quantity: 1,price: 23.43,discount: 1,total: 22.42,name: 'Washing service'),

  ];

  @override
  Widget build(BuildContext context) => Container(
        child: ListView.separated(padding: EdgeInsets.only(top: 14),
            scrollDirection: Axis.vertical,
            separatorBuilder: (context, index) => SizedBox(
                  height: 8,
                ),
            itemCount: list.length,
            itemBuilder: (context, index) => OrderItem(entity: list[index])),
      );
}
