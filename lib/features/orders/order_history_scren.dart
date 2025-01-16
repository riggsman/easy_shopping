import 'package:ecommerce/features/orders/order_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../data/providers/order_provider.dart';


class OrderHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Order History')),
      body: orderProvider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: orderProvider.orders.length,
              itemBuilder: (context, index) {
                final order = orderProvider.orders[index];
                return OrderCard(order: order);
              },
            ),
    );
  }
}
