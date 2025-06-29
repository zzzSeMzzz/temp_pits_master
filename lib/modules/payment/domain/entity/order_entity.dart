class OrderEntity {
  final String name;

  final int quantity;

  final double price;

  final int discount;

  final double total;

  const OrderEntity({
    this.quantity = 0,
    this.name = '',
    this.price = 0,
    this.discount = 0,
    this.total = 0,
  });
}
