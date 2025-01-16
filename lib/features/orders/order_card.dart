import 'package:flutter/material.dart';
import '../../../data/models/order.dart';

class OrderCard extends StatelessWidget {
  final Order order;

  const OrderCard({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Order ID: ${order.id}'),
        subtitle: Text('Total: \$${order.totalAmount}'),
        trailing: Text(order.date.toLocal().toString()),
      ),
    );
  }
}
