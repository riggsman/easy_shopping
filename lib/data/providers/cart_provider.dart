// import 'package:flutter/material.dart';
// import '../models/product.dart';

// class CartProvider extends ChangeNotifier {
//   final List<Product> _cart = [];

//   List<Product> get cart => _cart;

//   void addToCart(Product product) {
//     _cart.add(product);
//     notifyListeners();
//   }

//   void removeFromCart(Product product) {
//     _cart.remove(product);
//     notifyListeners();
//   }

//   double get totalPrice =>
//       _cart.fold(0, (total, product) => total + product.productPrice);
// }
