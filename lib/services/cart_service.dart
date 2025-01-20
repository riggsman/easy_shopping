// import 'package:ecommerce/data/models/product.dart';  
// import 'package:hive/hive.dart';  

// class CartService {  
//   Future<void> addProduct(Product product) async {  
//     final cartBox = Hive.box<Product>('cart');  
//     await cartBox.add(product);  
//   }  
// }

import 'package:hive/hive.dart';  
import 'package:ecommerce/data/models/product.dart'; // Adjust the import as necessary  

class CartService {  
  final Box<String> _cartBox;  

  CartService() : _cartBox = Hive.box<String>('cart');  

  // Add a product to the cart (stores as JSON string)  
  Future<void> addProduct(Product product) async {  
    String jsonString = product.toJsonString();  
    await _cartBox.add(jsonString);  
    getProducts(); 
  }  

  // Get all products from the cart  
  List<Product> getProducts() {  
    return _cartBox.values  
        .map((jsonString) => Product.fromJsonString(jsonString))  
        .toList();  
  }  

  // Clear the cart  
  Future<void> clearCart() async {  
    await _cartBox.clear();  
  }  
}