

// import 'package:ecommerce/data/cache/hive_cache_handler.dart';
// import 'package:ecommerce/data/models/product.dart';
// import 'package:flutter/material.dart';

// class CartProvider extends ChangeNotifier{
//   List products = [];
//   double totalPrice = 0;
//   int quantity = 0;
//   HiveCache cache =  HiveCache();
  
//   Future<void> addProduct(name,type,imageAsset,price,quantity) async {
//     List data = [name,type,imageAsset,price,quantity];
//     cache.cacheList("product", data);
//     List cachedData =  await getCachedProducts("product");
//     print(cachedData.toString());
//   }
// productName;
//    String productType;
//    double productPrice;
//    int productQuantity;

   
//   Future<List> getCachedProducts(key) {
//     return cache.getListData(key);
//   }

//   void removeProduct(Product product) {
//     products.remove(product);
//     totalPrice -= product.productPrice.toInt() * product.productQuantity;
//     quantity -= product.productQuantity;
//     notifyListeners();
//   }


//   void updateQuantity(Product product, int newQuantity) {
//     int difference = newQuantity - product.productQuantity;
//     totalPrice += product.productPrice.toInt() * difference;
//     quantity += difference;
//     product.productQuantity = newQuantity;
//     notifyListeners();
//   }
// // }