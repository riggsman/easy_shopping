// // import 'package:ecommerce/data/models/product.dart';
// // import 'package:flutter/material.dart';

// // class ProductDetails extends StatelessWidget {
// //   final Product  product;
  
// //   const ProductDetails({super.key,required this.product});

// //   // final String product_name="";
// //   @override
// //   Widget build(BuildContext context) {
// //     final Map<String, dynamic> product = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(product['productName']),
// //       ),
// //       body: Column(
// //         children: [
// //           Container(),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:go_router/go_router.dart';

// // class ProductDetails extends StatelessWidget {
// //   const ProductDetails({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     // Retrieve the product details passed via GoRouter
// //     final Map<String, dynamic> product =
// //         GoRouter.of(context).extra as Map<String, dynamic>;

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(product['productName']),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Center(
// //               child: Image.asset(
// //                 product['imageAsset'],
// //                 height: 200,
// //                 fit: BoxFit.contain,
// //               ),
// //             ),
// //             const SizedBox(height: 16),
// //             Text(
// //               'Product Name: ${product['productName']}',
// //               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //             ),
// //             Text(
// //               'Type: ${product['productType']}',
// //               style: const TextStyle(fontSize: 18),
// //             ),
// //             Text(
// //               'Price: \$${product['price'].toStringAsFixed(2)}',
// //               style: const TextStyle(fontSize: 18),
// //             ),
// //             Text(
// //               'In Stock: ${product['quantity']}',
// //               style: const TextStyle(fontSize: 18),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }



// // import 'package:flutter/material.dart';
// // import 'package:go_router/go_router.dart';

// // class ProductDetails extends StatelessWidget {
// //   const ProductDetails({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     // Retrieve the extra parameter from GoRouterState
// //     final Map<String, dynamic> _product =
// //         GoRouter.of(context).routerDelegate.currentConfiguration.extra as Map<String, dynamic>;
// //     final Map<String, dynamic> product = GoRouter.of(context).routerDelegate.currentConfiguration.extra as Map<String, dynamic>;
// //      if (product == null) {
// //       return Scaffold(
// //         appBar: AppBar(
// //           title: const Text('Product Details'),
// //         ),
// //         body: const Center(
// //           child: Text('No product details available'),
// //         ),
// //       );
// //     }
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(product['productName']),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Center(
// //               child: Image.asset(
// //                 product['imageAsset'],
// //                 height: 200,
// //                 fit: BoxFit.contain,
// //               ),
// //             ),
// //             const SizedBox(height: 16),
// //             Text(
// //               'Product Name: ${product['productName']}',
// //               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //             ),
// //             Text(
// //               'Type: ${product['productType']}',
// //               style: const TextStyle(fontSize: 18),
// //             ),
// //             Text(
// //               'Price: \$${product['price'].toStringAsFixed(2)}',
// //               style: const TextStyle(fontSize: 18),
// //             ),
// //             Text(
// //               'In Stock: ${product['quantity']}',
// //               style: const TextStyle(fontSize: 18),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }


// import 'package:ecommerce/core/contants/app_strings.dart';
// import 'package:ecommerce/core/contants/app_styles.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class ProductDetails extends StatelessWidget {
//   // const ProductDetails({Key? key}) : super(key: key);
//   String productName;
//   final String productType;
//   final String imageAsset;
//   final double price;
//   final int quantity;

//   final Map<String, dynamic>? product;
//   ProductDetails({Key? key, required this.productName, required this.productType, required this.imageAsset, required this.price, required this.quantity, this.product}) : super(key: key);



//     return Scaffold(
//       appBar: AppBar(
//         title: Text(AppStrings.appName),
//         centerTitle: true,
//         titleTextStyle: TextStyle(
//           fontWeight: AppStyle.fontWeightBold,
//           fontSize: AppStyle.fontSizeMedium,
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(16, 300, 16, 0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               // crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                         Column(
//                            mainAxisAlignment: MainAxisAlignment.start,         
//                           children: [
//                             Image.asset(
//                             imageAsset,
//                             height: 200,
//                             fit: BoxFit.cover,
//                           ),
//                           ]
//                         ),
//                         SizedBox(width: 50),
//                          Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisSize : MainAxisSize.max,   
//                           children: [
//                             Row(
//                               mainAxisAlignment:MainAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Product Name: ${productName}',
//                                   style: const TextStyle(
//                                     fontSize: 20, 
//                                     fontWeight: FontWeight.bold
//                                     ),
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.start,     
//                               children: [
//                                 Text(
//                                   'Type: ${productType}',
//                                   style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 Text(
//                                   'Price: \$${price.toStringAsFixed(2)}',
//                                   style: const TextStyle(fontSize: AppStyle.fontSizeMedium, fontWeight: AppStyle.fontWeightBold),
//                                 ),
//                               ],
//                             ),
//                             Text(
//                               'In Stock: ${quantity}',
//                               style: const TextStyle(fontSize: AppStyle.fontSizeMedium, fontWeight: AppStyle.fontWeightBold),
//                             ),
//                             Text(
//                               'Specification: Sample specification',
//                               style: const TextStyle(fontSize: AppStyle.fontSizeMedium, fontWeight: AppStyle.fontWeightBold),
//                             ),
//                             RichText(
//                               text: TextSpan(
//                                 children: [
//                                   TextSpan(
//                                     text:"Description: ",
//                                     style: const TextStyle(
//                                         fontSize: AppStyle.fontSizeMedium,
//                                         fontWeight: AppStyle.fontWeightBold
//                                       )
//                                     ),
//                                   TextSpan(
//                                     text: "$productName description",
//                                     style: const TextStyle(
//                                         fontSize: AppStyle.fontSizeMedium,
//                                         fontWeight: AppStyle.fontWeightBold
//                                       )
//                                     ),
//                                 ]
//                                 ),
//                             ),
//                           ]
//                         ),
//                   ],
//                 ),
//               ],
//             ),
//           )
//         );
//   }
// }





import 'package:ecommerce/core/contants/app_styles.dart';
import 'package:ecommerce/features/cart/widgets/add_to_cart.dart';
import 'package:ecommerce/services/cart_service.dart';
import 'package:flutter/material.dart';  
import 'package:ecommerce/data/models/product.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart'; // Make sure to import your model  



class ProductDetails extends StatelessWidget {  
  final String productName;  
  final String productType;  
  final String imageAsset;  
  final double price;  
  final int quantity;  

  const ProductDetails({  
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
        child: Padding(
          padding: const EdgeInsets.only(top:50),
          child: Column(  
            children: [  
              // Display product image  
              // Expanded(  
              //   flex: 3,  
              //   child: Padding(  
              //     padding: const EdgeInsets.all(8.0),  
              //     child: Image.asset(  
              //       imageAsset,  
              //       fit: BoxFit.contain,  
              //     ),  
              //   ),  
              // ),  
              // Display product details  
              Expanded(  
                flex: 2,  
                child: Column(  
                  crossAxisAlignment: CrossAxisAlignment.center,  
                  children: [  
                    // Text('Product Name: $productName', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
                    // Text('Type: $productType', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
                    // Text('Price: \$${price.toStringAsFixed(2)}', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
                    // Text('In Stock: $quantity', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)), 
                    Expanded(  
                      flex: 1,  
                      child: Row(  
                        mainAxisAlignment: MainAxisAlignment.spaceAround,  
                        children: [  
                          // ElevatedButton(  
                          //   onPressed: () {  
                          //     // Create a Product instance  
                          //     var product = Product(  
                          //       id: DateTime.now().millisecondsSinceEpoch.toString(),  
                          //       name: productName,  
                          //       price: price,  
                          //       type: productType,  
                          //     );  
                          //     // Show the dialog
                          //     showDialog(
                          //       barrierDismissible:false,
                          //       context: context,
                          //       builder: (BuildContext context) {
                          //         return _dialogBuilder(context, product);
                          //       }
                          //     );

                          //     // Show a message or a snackbar  
                          //     ScaffoldMessenger.of(context).showSnackBar(  
                          //       SnackBar(content: Text('$productName added to cart')),  
                          //     );  
                          //   },  
                          //   child: Row(
                          //     children: [
                          //       Icon(Icons.add_circle, color: Colors.blue),  
                          //       SizedBox(width: 8),
                          //       Text('Add to Cart'),
                          //     ],
                          //   ),  
                          // ),  
                          ElevatedButton(  
                            onPressed: () {  
                              // GoRouter.of(context).push(  
                              //   '/product-details',  
                              //   extra: {  
                              //     'productName': productName,  
                              //     'productType': productType,  
                              //     'imageAsset': imageAsset,  
                              //     'price': price,  
                              //     'quantity': quantity,  
                              //   },  
                              // );  
                               // Create a Product instance  
                              var product = Product(  
                                id: DateTime.now().millisecondsSinceEpoch.toString(),  
                                name: productName,  
                                price: price,  
                                type: productType,  
                              );   
                              showDialog(
                                barrierDismissible:false,
                                context: context,
                                builder: (BuildContext context) {
                                  return _dialogBuilder(context, product);
                                }
                              );
                            },  
                            child: Row(
                              children: [
                                Icon(Icons.info, color: Colors.blue),  
                                SizedBox(width: 8),
                                Text('More Details'),
                              ],
                            ),  
                          ),  
                        ],  
                      ),  
                    ),   
                  ],  
                ),  
              ),  
            ],  
          ),
        ),  
      ),  
    );  
  }  


  Widget _dialogBuilder(BuildContext context, Product product) {
  return AlertDialog(
    title: const Text('Add Product'),
    content: Container(  
      padding: const EdgeInsets.all(8),  
      decoration: BoxDecoration(  
        color: Colors.grey[200],  
        borderRadius: BorderRadius.circular(8),  
      ),  
      child: Card(  
        elevation: 4,  
        child: Padding(
          padding: const EdgeInsets.only(top:50),
          child: Column(  
            children: [  
              // Display product image  
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
              // Display product details  
              Expanded(  
                flex: 2,  
                child: Column(  
                  crossAxisAlignment: CrossAxisAlignment.center,  
                  children: [  
                    Text('Product Name: $productName', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
                    Text('Type: $productType', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
                    Text('Price: \$${price.toStringAsFixed(2)}', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
                    Text('In Stock: $quantity', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)), 
                    Expanded(  
                      flex: 1,  
                      child: Row(  
                        mainAxisAlignment: MainAxisAlignment.spaceAround,  
                        children: [  
                          ElevatedButton(  
                            onPressed: () {  
                              // Create a Product instance  
                              var product = Product(  
                                id: DateTime.now().millisecondsSinceEpoch.toString(),  
                                name: productName,  
                                price: price,  
                                type: productType,  
                              );  
                              // Show the dialog
                              showDialog(
                                barrierDismissible:false,
                                context: context,
                                builder: (BuildContext context) {
                                  return _dialogBuilder(context, product);
                                }
                              );

                              // Show a message or a snackbar  
                              ScaffoldMessenger.of(context).showSnackBar(  
                                SnackBar(content: Text('$productName added to cart')),  
                              );  
                            },  
                            child: Row(
                              children: [
                                Icon(Icons.add_circle, color: Colors.blue),  
                                SizedBox(width: 8),
                                Text('Add to Cart'),
                              ],
                            ),  
                          ),  
                          // ElevatedButton(  
                          //   onPressed: () {  
                          //     GoRouter.of(context).push(  
                          //       '/product-details',  
                          //       extra: {  
                          //         'productName': productName,  
                          //         'productType': productType,  
                          //         'imageAsset': imageAsset,  
                          //         'price': price,  
                          //         'quantity': quantity,  
                          //       },  
                          //     );   
                          //   },  
                          //   child: Row(
                          //     children: [
                          //       Icon(Icons.info, color: Colors.blue),  
                          //       SizedBox(width: 8),
                          //       Text('More Details'),
                          //     ],
                          //   ),  
                          // ),  
                        ],  
                      ),  
                    ),   
                  ],  
                ),  
              ),  
            ],  
          ),
        ),  
      ),  
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () {
          Navigator.of(context).pop(); // Close the dialog
        },
        child: const Text('Close'),
      ),
      TextButton(
        onPressed: () {
          // Handle add to cart logic here
          Navigator.of(context).pop(); // Close the dialog
        },
        child: const Text('Add to Cart'),
      ),
    ],
  );
} 
}

class PRODUCTDETAILS {
  final String productName;  
  final String productType;  
  final String imageAsset;  
  final double price;  
  final int quantity;  

  const PRODUCTDETAILS({    
    required this.productName,  
    required this.productType,  
    required this.imageAsset,  
    required this.quantity,  
    required this.price,  
  }); 

  Widget PRODUCT_DETAILS(BuildContext context) {  
    return Container(  
      padding: const EdgeInsets.all(8),  
      decoration: BoxDecoration(  
        color: Colors.grey[200],  
        borderRadius: BorderRadius.circular(8),  
      ),  
      child: Card(  
        elevation: 4,  
        child: Padding(
          padding: const EdgeInsets.only(top:50),
          child: Column(  
            children: [  
              // Display product image  
              // Expanded(  
              //   flex: 3,  
              //   child: Padding(  
              //     padding: const EdgeInsets.all(8.0),  
              //     child: Image.asset(  
              //       imageAsset,  
              //       fit: BoxFit.contain,  
              //     ),  
              //   ),  
              // ),  
              // Display product details  
              Expanded(  
                flex: 2,  
                child: Column(  
                  crossAxisAlignment: CrossAxisAlignment.center,  
                  children: [  
                    // Text('Product Name: $productName', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
                    // Text('Type: $productType', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
                    // Text('Price: \$${price.toStringAsFixed(2)}', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
                    // Text('In Stock: $quantity', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)), 
                    Expanded(  
                      flex: 1,  
                      child: Row(  
                        mainAxisAlignment: MainAxisAlignment.spaceAround,  
                        children: [  
                          // ElevatedButton(  
                          //   onPressed: () {  
                          //     // Create a Product instance  
                          //     var product = Product(  
                          //       id: DateTime.now().millisecondsSinceEpoch.toString(),  
                          //       name: productName,  
                          //       price: price,  
                          //       type: productType,  
                          //     );  
                          //     // Show the dialog
                          //     showDialog(
                          //       barrierDismissible:false,
                          //       context: context,
                          //       builder: (BuildContext context) {
                          //         return _dialogBuilder(context, product);
                          //       }
                          //     );

                          //     // Show a message or a snackbar  
                          //     ScaffoldMessenger.of(context).showSnackBar(  
                          //       SnackBar(content: Text('$productName added to cart')),  
                          //     );  
                          //   },  
                          //   child: Row(
                          //     children: [
                          //       Icon(Icons.add_circle, color: Colors.blue),  
                          //       SizedBox(width: 8),
                          //       Text('Add to Cart'),
                          //     ],
                          //   ),  
                          // ),  
                          ElevatedButton(  
                            onPressed: () {  
                              // GoRouter.of(context).push(  
                              //   '/product-details',  
                              //   extra: {  
                              //     'productName': productName,  
                              //     'productType': productType,  
                              //     'imageAsset': imageAsset,  
                              //     'price': price,  
                              //     'quantity': quantity,  
                              //   },  
                              // );  
                               // Create a Product instance  
                              var product = Product(  
                                id: DateTime.now().millisecondsSinceEpoch.toString(),  
                                name: productName,  
                                price: price,  
                                type: productType,  
                              );   
                              showDialog(
                                barrierDismissible:false,
                                context: context,
                                builder: (BuildContext context) {
                                  return dialogBuilderProductDetails(context, product);
                                }
                              );
                            },  
                            child: Row(
                              children: [
                                Icon(Icons.info, color: Colors.blue),  
                                SizedBox(width: 8),
                                Text('More Details'),
                              ],
                            ),  
                          ),  
                        ],  
                      ),  
                    ),   
                  ],  
                ),  
              ),  
            ],  
          ),
        ),  
      ),  
    );  
  } 

  Widget dialogBuilderProductDetails(BuildContext context, Product product) {
  return AlertDialog(
    title: const Text('Product Details'),
    content: Container(  
      width: 700,
      height:600,
      padding: const EdgeInsets.all(8),  
      decoration: BoxDecoration(  
        color: Colors.grey[200],  
        borderRadius: BorderRadius.circular(8),  
      ),  
      child: Card(  
        elevation: 4,  
        child: Padding(
          padding: const EdgeInsets.only(top:50,left: 20,right: 20),
          child: Column(  
            children: [  
              // Display product image  
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
              // Display product details  
              Expanded(  
                flex: 2,  
                child: Column(  
                  crossAxisAlignment: CrossAxisAlignment.center,  
                  children: [  
                    Row(
                      children: [
                        Text('Product Name: $productName', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),
                      ],
                    ),  
                    Row(
                      children: [
                        Text('Type: Mug', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),
                      ],
                    ),  
                    Row(
                      children: [
                        Text('Price: \$${price.toStringAsFixed(2)}', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),
                      ],
                    ),  
                    Row(
                      children: [
                        Text('In Stock: $quantity', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Description: Sample description', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),
                      ],
                    ), 
                    Row(
                      children: [
                        Text('Specifications: Sample specification', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),
                      ],
                    ), 
                    // Expanded(  
                    //   flex: 1,  
                    //   child: Row(  
                    //     mainAxisAlignment: MainAxisAlignment.spaceAround,  
                    //     children: [  
                    //       ElevatedButton(  
                    //         onPressed: () {  
                    //           // Create a Product instance  
                    //           var product = Product(  
                    //             id: DateTime.now().millisecondsSinceEpoch.toString(),  
                    //             name: productName,  
                    //             price: price,  
                    //             type: productType,  
                    //           );  
                    //           // Show the dialog
                    //           // showDialog(
                    //           //   barrierDismissible:false,
                    //           //   context: context,
                    //           //   builder: (BuildContext context) {
                    //           //     return dialogBuilderProductDetails(context, product);
                    //           //   }
                    //           // );

                    //           // Show a message or a snackbar  
                    //           ScaffoldMessenger.of(context).showSnackBar(  
                    //             SnackBar(content: Text('$productName added to cart')),  
                    //           );  
                    //         },  
                    //         child: Row(
                    //           children: [
                    //             Icon(Icons.add_circle, color: Colors.blue),  
                    //             SizedBox(width: 8),
                    //             Text('Add to Cart'),
                    //           ],
                    //         ),  
                    //       ),  
                    //       // ElevatedButton(  
                    //       //   onPressed: () {  
                    //       //     GoRouter.of(context).push(  
                    //       //       '/product-details',  
                    //       //       extra: {  
                    //       //         'productName': productName,  
                    //       //         'productType': productType,  
                    //       //         'imageAsset': imageAsset,  
                    //       //         'price': price,  
                    //       //         'quantity': quantity,  
                    //       //       },  
                    //       //     );   
                    //       //   },  
                    //       //   child: Row(
                    //       //     children: [
                    //       //       Icon(Icons.info, color: Colors.blue),  
                    //       //       SizedBox(width: 8),
                    //       //       Text('More Details'),
                    //       //     ],
                    //       //   ),  
                    //       // ),  
                    //     ],  
                    //   ),  
                    // ),   
                  ],  
                ),  
              ),  
            ],  
          ),
        ),  
      ),  
    ),
    actions: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           ElevatedButton(  
            onPressed: () {  
              // Create a Product instance  
              var product = Product(  
                id: DateTime.now().millisecondsSinceEpoch.toString(),  
                name: productName,  
                price: price,  
                type: productType,  
              );  
              
              // Show a message or a snackbar  
              ScaffoldMessenger.of(context).showSnackBar(  
                SnackBar(content: Text('$productName added to cart')),  
              );  
            },  
          child: Row(
            children: [
              Icon(Icons.add_circle, color: Colors.blue),  
              SizedBox(width: 15),
              Text('Add to Cart'),
            ],
          ),  
        ),  
         SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child:  Row(
              children: [
                Icon(Icons.close_rounded, color: Colors.redAccent),  
                SizedBox(width: 15),
                Text('Close'),
            ],
          ), 
          ),
        ],
      ),
     
    ],
  );
} 
}

