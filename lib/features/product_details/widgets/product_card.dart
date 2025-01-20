
// import 'package:ecommerce/data/models/product.dart';
// import 'package:ecommerce/features/cart/cart_provider.dart';
// import 'package:ecommerce/features/product_details/widgets/product_details.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class ProductCard extends StatelessWidget {
//   final String productName;
//   final String productType;
//   final String imageAsset;
//   final double price;
//   final int quantity;

//   const ProductCard({
//     Key? key,
//     required this.productName,
//     required this.productType,
//     required this.imageAsset, 
//     required this.quantity, 
//     required this.price,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Card(
//         elevation: 4,
//         child: Column(
//           children: [
//             Expanded(
//               flex: 3,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Image.asset(
//                   imageAsset,
//                   fit: BoxFit.contain,
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Product Name: $productName',
//                     style: const TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Type: $productType'),
//                   Text('Price: \$${price}'),
//                   Text('In Stock: $quantity'),
//                 ],
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       CartProvider cartProvider = CartProvider();
//                           // var product = {
//                           //   'productName': productName,
//                           //   'productType': productType,
//                           //   'imageAsset': imageAsset,
//                           //   'price': price,
//                           //   'quantity': quantity,
//                           // }as Product;
//                       cartProvider.addProduct(productName, productType, imageAsset, price, quantity);
//                     },
//                     child: const Text('Add Product'),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                         GoRouter.of(context).push(
//                           '/product-details',
//                           extra: {
//                             'productName': productName,
//                             'productType': productType,
//                             'imageAsset': imageAsset,
//                             'price': price,
//                             'quantity': quantity,
//                           },
//                         );
//                     },
//                     child: const Text('More Details'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // import 'package:ecommerce/features/product_details/widgets/product_details.dart';
// // import 'package:flutter/material.dart';
// // import 'package:go_router/go_router.dart';

// // class ProductCard extends StatelessWidget {
// //   final String productName;
// //   final String productType;
// //   final String imageAsset;
// //   final double price;
// //   final int quantity;

// //   const ProductCard({
// //     Key? key,
// //     required this.productName,
// //     required this.productType,
// //     required this.imageAsset,
// //     required this.quantity,
// //     required this.price,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       padding: const EdgeInsets.all(8),
// //       decoration: BoxDecoration(
// //         color: Colors.grey[200],
// //         borderRadius: BorderRadius.circular(8),
// //       ),
// //       child: Card(
// //         elevation: 4,
// //         child: Column(
// //           children: [
// //             Expanded(
// //               flex: 3,
// //               child: Padding(
// //                 padding: const EdgeInsets.all(8.0),
// //                 child: Image.asset(
// //                   imageAsset,
// //                   fit: BoxFit.contain,
// //                 ),
// //               ),
// //             ),
// //             Expanded(
// //               flex: 2,
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text(
// //                     'Product Name: $productName',
// //                     style: const TextStyle(fontWeight: FontWeight.bold),
// //                   ),
// //                   Text('Type: $productType'),
// //                   Text('Price: \$${price.toStringAsFixed(2)}'),
// //                   Text('In Stock: $quantity'),
// //                 ],
// //               ),
// //             ),
// //             Expanded(
// //               flex: 1,
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                 children: [
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       // Logic for adding product
// //                     },
// //                     child: const Text('Add Product'),
// //                   ),
// //                   ElevatedButton(
// //                       onPressed: () {
// //                         GoRouter.of(context).push(
// //                           '/product-details',
// //                           extra: {
// //                             'productName': productName,
// //                             'productType': productType,
// //                             'imageAsset': imageAsset,
// //                             'price': price,
// //                             'quantity': quantity,
// //                           },
// //                         );
// //                       },
// //                       child: const Text('More Details'),
// //                     ),

// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

import 'package:ecommerce/data/models/product.dart';  
import 'package:ecommerce/features/product_details/product_details.dart';
import 'package:ecommerce/services/cart_service.dart';  
import 'package:flutter/material.dart';  
import 'package:go_router/go_router.dart';  

class ProductCard extends StatelessWidget {  
  final String productName;  
  final String productType;  
  final String imageAsset;  
  final double price;  
  final int quantity;  

  const ProductCard({  
    Key? key,  
    required this.productName,  
    required this.productType,  
    required this.imageAsset,  
    required this.quantity,  
    required this.price,  
  }) : super(key: key);  

  @override  
  Widget build(BuildContext context) {  
    return Container(  
      padding: const EdgeInsets.all(8),  
      decoration: BoxDecoration(  
        color: Colors.grey[200],  
        borderRadius: BorderRadius.circular(8),  
      ),  
      child: Card(  
        elevation: 4,  
        child: Column(  
          children: [  
            Expanded(  
              flex: 3,  
              child: Padding(  
                padding: const EdgeInsets.all(8.0),  
                child: Image.asset(  
                  imageAsset,  
                  fit: BoxFit.contain,  
                ),  
              ),  
            ),  
            Expanded(  
              flex: 2,  
              child: Column(  
                crossAxisAlignment: CrossAxisAlignment.start,  
                children: [  
                  Text(  
                    'Product Name: $productName',  
                    style: const TextStyle(fontWeight: FontWeight.bold),  
                  ),  
                  Text('Type: $productType'),  
                  Text('Price: \$${price.toStringAsFixed(2)}'),  
                  Text('In Stock: $quantity'),  
                ],  
              ),  
            ),  
            Expanded(  
              flex: 1,  
              child: Row(  
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                children: [  
                  ElevatedButton(  
                    onPressed: () async {  
                      // Create a Product instance  
                      var product = Product(  
                        id: DateTime.now().millisecondsSinceEpoch.toString(), // Unique ID  
                        name: productName,  
                        price: price,  
                        type: productType, 
                        quantity: quantity,  
                      );  

                      // Use CartService to add product to cart  
                      CartService cartService = CartService();  
                      await cartService.addProduct(product);  

                      // Optionally, show a message or a snackbar  
                      ScaffoldMessenger.of(context).showSnackBar(  
                        SnackBar(content: Text('$productName added to cart')),  
                      );  
                    },  
                    child: const Text('Add Product'),  
                  ),  
                  ElevatedButton(  
                    onPressed: () {  
                      GoRouter.of(context).push(  
                        '/product-details',  
                        extra: {  
                          'productName': productName,  
                          'productType': productType,  
                          'imageAsset': imageAsset,  
                          'price': price,  
                          'quantity': quantity,  
                        },  
                      );  
                    },  
                    child: const Text('More Details'),  
                  ),  
                ],  
              ),  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}