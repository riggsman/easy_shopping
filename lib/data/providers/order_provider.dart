import 'package:flutter/material.dart';
import '../models/order.dart';
import '../repositories/order_repo.dart';

class OrderProvider extends ChangeNotifier {
  final OrderRepository _repository = OrderRepository();
  List<Order> _orders = [];
  bool _isLoading = false;

  List<Order> get orders => _orders;
  bool get isLoading => _isLoading;

  Future<void> loadOrderHistory(String userId) async {
    _isLoading = true;
    notifyListeners();
    _orders = await _repository.fetchOrderHistory(userId);
    _isLoading = false;
    notifyListeners();
  }
}
