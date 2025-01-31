import 'dart:convert';  
import 'package:ecommerce/data/models/product.dart';
import 'package:http/http.dart' as http;  

class ProductService {  
  final String baseUrl;  

  ProductService(this.baseUrl);  

  Future<List<Product>> fetchProducts() async {  
    final response = await http.get(Uri.parse('$baseUrl/products'));  

    if (response.statusCode == 200) {  
      List jsonResponse = json.decode(response.body);  
      return jsonResponse.map((product) => Product.fromJson(product)).toList();  
    } else {  
      throw Exception('Failed to load products');  
    }  
  }  
}