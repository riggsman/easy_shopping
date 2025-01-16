// class Product {
//    String productName;
//    String productType;
//    double productPrice;
//    int productQuantity;

//   Product({required this.productName, required this.productType, required this.productPrice,required this.productQuantity});


// }

// import 'dart:convert';  
// import 'package:hive/hive.dart';  

// // part 'product.g.dart';  

// @HiveType(typeId: 0)  
// class Product {  
//   @HiveField(0)  
//   final String id;  

//   @HiveField(1)  
//   final String name;  

//   @HiveField(2)  
//   final double price;  

//   Product({required this.id, required this.name, required this.price, required String type});  

//   factory Product.fromJson(Map<String, dynamic> json) {  
//     return Product(  
//       id: json['id'],  
//       name: json['productName'],  
//       price: json['ProductPrice'].toDouble(),  
//       type: json['ProductType'],
//     );  
//   }  
// }


import 'dart:convert';  

class Product {  
  final String id;  
  final String name;  
  final double price;  
  final String type;  

  Product({  
    required this.id,  
    required this.name,  
    required this.price,  
    required this.type,  
  });  

  // Convert to a JSON map  
  Map<String, dynamic> toJson() => {  
        'id': id,  
        'name': name,  
        'price': price,  
        'type': type,  
      };  

  // Create a product instance from JSON map  
  factory Product.fromJson(Map<String, dynamic> json) {  
    return Product(  
      id: json['id'],  
      name: json['name'],  
      price: json['price'],  
      type: json['type'],  
    );  
  }  

  // Convert the Product object to a JSON string  
  String toJsonString() => json.encode(toJson());  

  // Create a product instance from a JSON string  
  factory Product.fromJsonString(String jsonString) {  
    final Map<String, dynamic> jsonMap = json.decode(jsonString);  
    return Product.fromJson(jsonMap);  
  }  
}