// import 'package:flutter/material.dart';
// import '../models/product.dart';
// import '../repositories/product_repo.dart';

// class ProductProvider extends ChangeNotifier {
//   final ProductRepository _repository = ProductRepository();
//   List<Product> _products = [];
//   bool _isLoading = false;

//   List<Product> get products => _products;
//   bool get isLoading => _isLoading;

//   Future<void> loadProducts() async {
//     _isLoading = true;
//     notifyListeners();
//     _products = await _repository.fetchProducts();
//     _isLoading = false;
//     notifyListeners();
//   }
// }
