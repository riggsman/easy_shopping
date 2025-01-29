import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/product.dart'; // Adjust path as needed

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];
  bool _isLoading = false;

  List<Product> get products => _products;
  bool get isLoading => _isLoading;

  final String baseUrl = "http://127.0.0.1:8000"; // Replace with your API

  Future<void> fetchProducts() async {
    _isLoading = true;
    notifyListeners(); // Notify UI to show loading state

    try {
      final response = await http.get(Uri.parse('$baseUrl/products'));
      // print(response.body);
      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);
        _products = jsonResponse.map((product) => Product.fromJson(product)).toList();
        // print(_products);
      } else {
        throw Exception("Failed to load products");
      }
    } catch (error) {
      print("Error fetching products: $error");
    }

    _isLoading = false;
    notifyListeners(); // Notify UI to update with new data
  }
}
