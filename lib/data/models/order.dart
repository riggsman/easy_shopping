class Order {
  final String id;
  final String userId;
  final double totalAmount;
  final DateTime date;

  Order({
    required this.id,
    required this.userId,
    required this.totalAmount,
    required this.date,
  });
}
