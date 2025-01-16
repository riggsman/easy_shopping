import '../models/order.dart';

class OrderRepository {
  Future<List<Order>> fetchOrderHistory(String userId) async {
    // Simulate fetching order history from an API
    await Future.delayed(const Duration(seconds: 2));
    return [
      Order(id: '1', userId: userId, totalAmount: 1200.0, date: DateTime.now()),
      Order(id: '2', userId: userId, totalAmount: 300.0, date: DateTime.now()),
    ];
  }
}
