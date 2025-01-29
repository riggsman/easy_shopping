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
  final int quantity; 
  final String image_url;

  Product({  
    required this.id,  
    required this.name,  
    required this.price,  
    required this.type,  
    required this.quantity,
    required this.image_url,
    
  });  

  // Convert to a JSON map  
  Map<String, dynamic> toJson() => {  
        'id': id,  
        'name': name,  
        'price': price,  
        'type': type,
        'quantity': quantity, 
        'image_url': image_url,
      };  

  // Create a product instance from JSON map  
  factory Product.fromJson(Map<String, dynamic> json) {  
    return Product(  
      id: json['id'].toString(),  
      name: json['name'],  
      price: json['price'],  
      type: json['type'],  
      quantity: json['quantity'],
      image_url: json['image_url'],
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

class Complete_Product_Details {  
  final String id;  
  final String name;  
  final double price;  
  final String type;  
  final int quantity; 
  final String model;
  final String image_url;
  final String description;
  final bool isnew;
  final bool available;

  Complete_Product_Details({  
    required this.id,  
    required this.name,  
    required this.price,  
    required this.type,  
    required this.quantity,
    required this.model,
    required this.image_url,
    required this.description,
    required this.isnew,
    required this.available,
  });  

  // Convert to a JSON map  
  Map<String, dynamic> toJson() => {  
        'id': id,  
        'name': name,  
        'price': price,  
        'type': type,
        'quantity': quantity, 
        'image_url': image_url,
        'description': description,
        'isnew': isnew,
        'available': available,
      };  

  // Create a product instance from JSON map  
  factory Complete_Product_Details.fromJson(Map<String, dynamic> json) {  
    return Complete_Product_Details(  
      id: json['id'].toString(),  
      name: json['name'],  
      price: json['price'],  
      type: json['type'],  
      quantity: json['quantity'],
      model: json['model'],
      image_url: json['image_url'],
      description: json['description'],
      isnew: json['isnew'],
      available: json['available'],    
    );  
  }  

  // Convert the Product object to a JSON string  
  String toJsonString() => json.encode(toJson());  

  // Create a product instance from a JSON string  
  factory Complete_Product_Details.fromJsonString(String jsonString) {  
    final Map<String, dynamic> jsonMap = json.decode(jsonString);  
    return Complete_Product_Details.fromJson(jsonMap);  
  }  
}