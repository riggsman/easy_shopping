
// // import 'package:ecommerce/data/models/product.dart';
// // import 'package:ecommerce/features/cart/cart_provider.dart';
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
// //                   Text('Price: \$${price}'),
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
// //                       CartProvider cartProvider = CartProvider();
// //                           // var product = {
// //                           //   'productName': productName,
// //                           //   'productType': productType,
// //                           //   'imageAsset': imageAsset,
// //                           //   'price': price,
// //                           //   'quantity': quantity,
// //                           // }as Product;
// //                       cartProvider.addProduct(productName, productType, imageAsset, price, quantity);
// //                     },
// //                     child: const Text('Add Product'),
// //                   ),
// //                   ElevatedButton(
// //                     onPressed: () {
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
// //                     },
// //                     child: const Text('More Details'),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // import 'package:ecommerce/features/product_details/widgets/product_details.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:go_router/go_router.dart';

// // // class ProductCard extends StatelessWidget {
// // //   final String productName;
// // //   final String productType;
// // //   final String imageAsset;
// // //   final double price;
// // //   final int quantity;

// // //   const ProductCard({
// // //     Key? key,
// // //     required this.productName,
// // //     required this.productType,
// // //     required this.imageAsset,
// // //     required this.quantity,
// // //     required this.price,
// // //   }) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Container(
// // //       padding: const EdgeInsets.all(8),
// // //       decoration: BoxDecoration(
// // //         color: Colors.grey[200],
// // //         borderRadius: BorderRadius.circular(8),
// // //       ),
// // //       child: Card(
// // //         elevation: 4,
// // //         child: Column(
// // //           children: [
// // //             Expanded(
// // //               flex: 3,
// // //               child: Padding(
// // //                 padding: const EdgeInsets.all(8.0),
// // //                 child: Image.asset(
// // //                   imageAsset,
// // //                   fit: BoxFit.contain,
// // //                 ),
// // //               ),
// // //             ),
// // //             Expanded(
// // //               flex: 2,
// // //               child: Column(
// // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // //                 children: [
// // //                   Text(
// // //                     'Product Name: $productName',
// // //                     style: const TextStyle(fontWeight: FontWeight.bold),
// // //                   ),
// // //                   Text('Type: $productType'),
// // //                   Text('Price: \$${price.toStringAsFixed(2)}'),
// // //                   Text('In Stock: $quantity'),
// // //                 ],
// // //               ),
// // //             ),
// // //             Expanded(
// // //               flex: 1,
// // //               child: Row(
// // //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // //                 children: [
// // //                   ElevatedButton(
// // //                     onPressed: () {
// // //                       // Logic for adding product
// // //                     },
// // //                     child: const Text('Add Product'),
// // //                   ),
// // //                   ElevatedButton(
// // //                       onPressed: () {
// // //                         GoRouter.of(context).push(
// // //                           '/product-details',
// // //                           extra: {
// // //                             'productName': productName,
// // //                             'productType': productType,
// // //                             'imageAsset': imageAsset,
// // //                             'price': price,
// // //                             'quantity': quantity,
// // //                           },
// // //                         );
// // //                       },
// // //                       child: const Text('More Details'),
// // //                     ),

// // //                 ],
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// import 'package:ecommerce/data/models/product.dart';  
// import 'package:ecommerce/features/product_details/product_details.dart';
// import 'package:ecommerce/services/cart_service.dart';  
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
//                   Text('Price: \$${price.toStringAsFixed(2)}'),  
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
//                     onPressed: () async {  
//                       // Create a Product instance  
//                       var product = Product(  
//                         id: DateTime.now().millisecondsSinceEpoch.toString(), // Unique ID  
//                         name: productName,  
//                         price: price,  
//                         type: productType,  
//                       );  

//                       // Use CartService to add product to cart  
//                       CartService cartService = CartService();  
//                       await cartService.addProduct(product);  

//                       // Optionally, show a message or a snackbar  
//                       ScaffoldMessenger.of(context).showSnackBar(  
//                         SnackBar(content: Text('$productName added to cart')),  
//                       );  
//                     },  
//                     child: const Text('Add Product'),  
//                   ),  
//                   ElevatedButton(  
//                     onPressed: () {  
//                       GoRouter.of(context).push(  
//                         '/product-details',  
//                         extra: {  
//                           'productName': productName,  
//                           'productType': productType,  
//                           'imageAsset': imageAsset,  
//                           'price': price,  
//                           'quantity': quantity,  
//                         },  
//                       );  
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


// import 'dart:ffi';

import 'package:ecommerce/core/contants/app_styles.dart';
import 'package:ecommerce/features/cart/widgets/add_to_cart.dart';
import 'package:ecommerce/features/product_details/product_details.dart';
import 'package:ecommerce/features/product_details/widgets/dialog.dart';
import 'package:ecommerce/services/cart_service.dart';
import 'package:flutter/material.dart';  
import 'package:ecommerce/data/models/product.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart'; // Make sure to import your model  



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
                                quantity: quantity,  
                              );  
                              // Show the dialog
                              // showDialog(
                              //   barrierDismissible:false,
                              //   context: context,
                              //   builder: (BuildContext context) {
                              //     return _dialogBuilder(context, product);
                              //   }
                              // );
                                 showDialog(
                                    barrierDismissible:false,
                                    context: context, 
                                    builder: (BuildContext context) {
                                      return AddPRoductToCartDialogMobile(product:product);
                                      // return PD.dialogBuilderProductDetails(context,product);
                                    });
                            },  
                            child: Row(
                              children: [
                                Icon(Icons.add_circle, color: Colors.blue),  
                                SizedBox(width: 8),
                                Text('Add to Cart'),
                              ],
                            ),  
                          ),  
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
                              var product = Product(  
                                id: DateTime.now().millisecondsSinceEpoch.toString(),  
                                name: productName,  
                                price: price,  
                                type: productType,
                                quantity: quantity, 
                              ); 
                              PRODUCTDETAILS PD = PRODUCTDETAILS(productName:productName ,productType:productType,imageAsset:imageAsset,price:price,quantity:quantity);
                              showDialog(
                                barrierDismissible:false,
                                context: context, 
                                builder: (BuildContext context) {
                                  return AddPRoductToCartDialog(product:product);
                                });
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


// Widget _dialogBuilder(BuildContext context, Product product) {
//   double itemPrice = product.price;
//   TextEditingController UpdateCartValueController = TextEditingController(text: "1");
//   TextEditingController totalPriceController = TextEditingController();

//   return AlertDialog(
//     title: const Text('Add Product'),
//     content: Container(
//       width: 600,
//       height: 600,
//       child: Card.filled(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Consumer<RefreshValues>(
//               builder: (context, provider, child) {
//                 // Initialize total price controller with the calculated total
//                 if (totalPriceController.text.isEmpty) {
//                   totalPriceController.text = (provider.newTotal).toStringAsFixed(2);
//                 }

//                 return ListTile(
//                   title: Text('Product Name: ${product.name}'),
//                   trailing: Text("Total Price: ${provider.newTotal.toStringAsFixed(2)}"),
//                   subtitle: Column(
//                     children: [
//                       TextField(
//                         controller: UpdateCartValueController,
//                         decoration: InputDecoration(labelText: 'Quantity'),
//                         keyboardType: TextInputType.number,
//                         onChanged: (value) {
//                           int quantity = int.tryParse(value) ?? 0;
//                           provider.setPrice(itemPrice); // Set the price before calculating total
//                           provider.setValue(quantity);
//                           provider.updatePriceValue(quantity);
//                           totalPriceController.text = (provider.newTotal).toStringAsFixed(2); // Update total price text field
//                         },
//                       ),
//                       TextField(
//                         controller: totalPriceController,
//                         decoration: InputDecoration(labelText: 'Total Price'),
//                         keyboardType: TextInputType.number,
//                         onChanged: (value) {
//                           double customTotal = double.tryParse(value) ?? 0;
//                           provider.setCustomTotal(customTotal); // Update provider with custom total
//                         },
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             int currentQuantity = int.tryParse(UpdateCartValueController.text) ?? 0;
//                             int newValue = currentQuantity + 1;
//                             UpdateCartValueController.text = newValue.toString();

//                             // Update the provider
//                             RefreshValues rv = Provider.of<RefreshValues>(context, listen: false);
//                             rv.setValue(newValue);
//                             rv.updatePriceValue(newValue);
//                             totalPriceController.text = (rv.newTotal).toStringAsFixed(2); // Update total price text field
//                           },
//                           child: Row(
//                             children: [
//                               Text("Add"),
//                               SizedBox(width: 2),
//                               Icon(Icons.add_circle),
//                             ],
//                           ),
//                         ),
//                         SizedBox(width: 20),
//                         GestureDetector(
//                           onTap: () {
//                             int currentQuantity = int.tryParse(UpdateCartValueController.text) ?? 0;
//                             if (currentQuantity > 1) {
//                               int newValue = currentQuantity - 1;
//                               UpdateCartValueController.text = newValue.toString();

//                               // Update the provider
//                               RefreshValues rv = Provider.of<RefreshValues>(context, listen: false);
//                               rv.setValue(newValue);
//                               rv.updatePriceValue(newValue);
//                               totalPriceController.text = (rv.newTotal).toStringAsFixed(2); // Update total price text field
//                             }
//                           },
//                           child: Row(
//                             children: [
//                               Text("Remove"),
//                               SizedBox(width: 2),
//                               Icon(Icons.remove_circle),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//     actions: <Widget>[
//       TextButton(
//         onPressed: () {
//           Navigator.of(context).pop(); // Close the dialog
//         },
//         child: const Text('Close'),
//       ),
//       TextButton(
//         onPressed: () {
//           // Handle add to cart logic here
//           print("ADD TO CART BUTTON CLICKED:");
//           Navigator.of(context).pop(); // Close the dialog
//         },
//         child: const Text('Add to Cart'),
//       ),
//     ],
//   );
// }
// }

Widget _dialogBuilder(BuildContext context, Product product) {
  double itemPrice = product.price;
  TextEditingController UpdateCartValueController = TextEditingController(text: "1");
  TextEditingController totalPriceController = TextEditingController();

  return AlertDialog(
    title: const Text('Add Product'),
    content: Container(
      width: 600,
      height: 600,
      child: Card.filled(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           
            Consumer<RefreshValues>(
              builder: (context, provider, child) {
                // Initialize total price controller with the calculated total
                if (totalPriceController.text.isEmpty) {
                  totalPriceController.text = (provider.newTotal).toStringAsFixed(2);
                }

                return ListTile(
                  title: Text('Product Name: ${product.name}'),
                  trailing: Text("Total Price: ${provider.newTotal.toStringAsFixed(2)}"),
                  subtitle: Column(
                    children: [
                      TextField(
                        controller: UpdateCartValueController,
                        decoration: InputDecoration(labelText: 'Quantity'),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          int quantity = int.tryParse(value) ?? 0;
                          provider.setPrice(itemPrice); // Set the price before calculating total
                          provider.setValue(quantity);
                          provider.updatePriceValue(quantity);
                          totalPriceController.text = (provider.newTotal).toStringAsFixed(2); // Update total price text field
                        },
                      ),
                      // TextField(
                      //   controller: totalPriceController,
                      //   decoration: InputDecoration(labelText: 'Total Price'),
                      //   keyboardType: TextInputType.number,
                      //   onChanged: (value) {
                      //     double customTotal = double.tryParse(value) ?? 0;
                      //     provider.setCustomTotal(customTotal); // Update provider with custom total
                      //   },
                      // ),
                    ],
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            int currentQuantity = int.tryParse(UpdateCartValueController.text) ?? 0;
                            int newValue = currentQuantity + 1;
                            UpdateCartValueController.text = newValue.toString();

                            // Update the provider and total price
                            RefreshValues rv = Provider.of<RefreshValues>(context, listen: false);
                            rv.setValue(newValue);
                            rv.updatePriceValue(newValue);
                            totalPriceController.text = (rv.newTotal).toStringAsFixed(2); // Update total price text field
                          },
                          child: Row(
                            children: [
                              Text("Add"),
                              SizedBox(width: 2),
                              Icon(Icons.add_circle),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            int currentQuantity = int.tryParse(UpdateCartValueController.text) ?? 0;
                            if (currentQuantity > 1) {
                              int newValue = currentQuantity - 1;
                              UpdateCartValueController.text = newValue.toString();

                              // Update the provider and total price
                              RefreshValues rv = Provider.of<RefreshValues>(context, listen: false);
                              rv.setValue(newValue);
                              rv.updatePriceValue(newValue);
                              totalPriceController.text = (rv.newTotal).toStringAsFixed(2); // Update total price text field
                            }
                          },
                          child: Row(
                            children: [
                              Text("Remove"),
                              SizedBox(width: 2),
                              Icon(Icons.remove_circle),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
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
           showDialog(
              barrierDismissible:false,
              context: context, 
              builder: (BuildContext context) {
                return AddPRoductToCartDialogMobile(product:product);
                // return PD.dialogBuilderProductDetails(context,product);
              });
          // Handle add to cart logic here
          print("ADD TO CART BUTTON CLICKED:");
          Navigator.of(context).pop(); // Close the dialog
        },
        child: const Text('Add to Cart'),
      ),
    ],
  );
}
}

class RefreshValues extends ChangeNotifier {
  int _newValue = 1;
  double _newTotal = 0;
  double _price = 0;

  int get newValue => _newValue;
  double get newTotal => _newTotal;
  double get price => _price;

  void setPrice(double price) {
    _price = price;
    notifyListeners();
  }

  void updatePriceValue(int newValue) {
    _newTotal = newValue * _price; // Calculate total based on current price and quantity
    notifyListeners(); // Notify listeners to update UI
  }

  void setValue(int newValue) {
    _newValue = newValue;
    notifyListeners();
  }

  void setCustomTotal(double customTotal) {
    _newTotal = customTotal; // Set custom total directly
    notifyListeners(); // Notify listeners to update UI
  }
}





// Widget _dialogBuilder(BuildContext context, Product product) {
//   double itemPrice = product.price;
//   TextEditingController UpdateCartValueController = TextEditingController(text: "1");

//   return AlertDialog(
//     title: const Text('Add Product'),
//     content: Container(
//       width: 600,
//       height: 600,
//       child: Card.filled(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Card.filled(
//               child: Column(
//                 children: [
//                   Consumer<RefreshValues>(
//                     builder: (context, provider, child) {
//                       return ListTile(
//                         title: Text('Product Name: ${product.name}'),
//                         trailing: Text("Total Price: ${provider.newTotal.toStringAsFixed(2)}"), // Display total price
//                         subtitle: TextField(
//                           controller: UpdateCartValueController,
//                           decoration: InputDecoration(labelText: 'Quantity'),
//                           keyboardType: TextInputType.number,
//                           onChanged: (value) {
//                             int quantity = int.tryParse(value) ?? 0;
//                             provider.setPrice(itemPrice); // Set the price before calculating total
//                             provider.setValue(quantity);
//                             provider.updatePriceValue(quantity);
//                             // print("Total price ${provider.newTotal}");
//                           },
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             int currentQuantity = int.tryParse(UpdateCartValueController.text) ?? 0;
//                             int newValue = currentQuantity + 1;
//                             UpdateCartValueController.text = newValue.toString(); // Update the TextField

//                             // Update the provider
//                             RefreshValues rv = Provider.of<RefreshValues>(context, listen: false);
//                             rv.setValue(newValue);
//                             rv.updatePriceValue(newValue);
//                           },
//                           child: Row(
//                             children: [
//                               Text("Add"),
//                               SizedBox(width: 2),
//                               Icon(Icons.add_circle),
//                             ],
//                           ),
//                         ),
//                         SizedBox(width: 20),
//                         GestureDetector(
//                           onTap: () {
//                             int currentQuantity = int.tryParse(UpdateCartValueController.text) ?? 0;
//                             if (currentQuantity > 1) {
//                               int newValue = currentQuantity - 1;
//                               UpdateCartValueController.text = newValue.toString(); // Update the TextField

//                               // Update the provider
//                               RefreshValues rv = Provider.of<RefreshValues>(context, listen: false);
//                               rv.setValue(newValue);
//                               rv.updatePriceValue(newValue);
//                             }
//                           },
//                           child: Row(
//                             children: [
//                               Text("Remove"),
//                               SizedBox(width: 2),
//                               Icon(Icons.remove_circle),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//     actions: <Widget>[
//       TextButton(
//         onPressed: () {
//           Navigator.of(context).pop(); // Close the dialog
//         },
//         child: const Text('Close'),
//       ),
//       TextButton(
//         onPressed: () {
//           // Handle add to cart logic here
//           print("ADD TO CART BUTTON CLICKED:");
//           Navigator.of(context).pop(); // Close the dialog
//         },
//         child: const Text('Add to Cart'),
//       ),
//     ],
//   );
// }
// }

// class RefreshValues extends ChangeNotifier {
//   int _newValue = 1;
//   double _newTotal = 0;
//   double _price = 0;

//   int get newValue => _newValue;
//   double get newTotal => _newTotal;
//   double get price => _price;

//   void setPrice(double price) {
//     _price = price;
//     notifyListeners();
//   }

//   void updatePriceValue(int newValue) {
//     _newTotal = newValue * _price; // Calculate total based on current price and quantity
//     notifyListeners(); // Notify listeners to update UI
//   }

//   void setValue(int newValue) {
//     _newValue = newValue;
//     notifyListeners();
//   }

//   void setCustomTotal(double customTotal) {
//     _newTotal = customTotal; // Set custom total directly
//     notifyListeners(); // Notify listeners to update UI
//   }
// }








// Widget _dialogBuilder(BuildContext context, Product product) {
//   int newValue = 0;
//   double itemPrice = product.price;
//   TextEditingController UpdateCartValueController = TextEditingController(text: "1");
//   TextEditingController totalAmountController = TextEditingController(text:product.price.toString());
//   int enbled = 1;
//   return AlertDialog(
//     title: const Text('Add Product'),
//     content: Container(
//       width: 600,
//       height: 600, 
//       child: Card.filled(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Card.filled(
//               child: Column(
//                 children: [
//                   Consumer<RefreshValues>(
//                       builder: (context,provider,child){
//                   return ListTile(
//                     title:  Text('Product Name: ${product.name}'),
//                     trailing: Text("data ${provider.newTotal}"),  
//                     subtitle:  TextField(
//                       controller: UpdateCartValueController,
//                       decoration: InputDecoration(label: Text('Quantity')),
//                       keyboardType: TextInputType.number,
//                     ),
                    
//                   );
//                   },
//                   ),
//                 ],
//               ),
//             ),
           
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Column(
//                   children: [
//                     Row(
//                       children: [GestureDetector(
//                         onTap: () {
//                           RefreshValues rv = RefreshValues();
//                           rv.setPrice(itemPrice);

//                           // Increment the value based on the current text field value
//                           int currentQuantity = int.tryParse(UpdateCartValueController.text) ?? 0;
//                           newValue = currentQuantity + 1;
//                           UpdateCartValueController.text = newValue.toString(); // Update the TextField
//                           rv.setValue(newValue);
//                           rv.updatePriceValue(newValue);

//                           double total = double.tryParse(totalAmountController.text) ?? 0; 
//                           // newTotal = itemPrice * newValue;
//                           // totalAmountController.text = newTotal.toString(); // Update the TextField
//                           // newValue * product.price).toString();
                          
//                           print("Add something: ${rv.newTotal}");
//                         },
//                         child: Row(
//                           children: [
//                             Text("Add"),
//                             SizedBox(width: 2),
//                             Icon(Icons.add_circle),
//                           ],
//                         ),
//                       ),
//                      SizedBox(width: 20),
//                      GestureDetector(
//                       onTap: enbled == 1 ? () {
//                         // Increment the value based on the current text field value
//                         int currentQuantity = int.tryParse(UpdateCartValueController.text) ?? 0;
//                         if(int.tryParse(UpdateCartValueController.text)! < 1)
//                         {
//                           currentQuantity = 0;
//                           UpdateCartValueController.text = currentQuantity.toString();
//                           // newenbled = enbled;
//                           enbled = 0;
//                         }else{
//                             newValue = currentQuantity - 1;
//                             UpdateCartValueController.text = newValue.toString(); // Update the TextField
//                             print("Removed something: ${newValue}  ${enbled}");
//                         }
                       
//                       } : null,
//                       child: Row(
//                         children: [
//                           Text("Remove"),
//                           SizedBox(width: 2),
//                           Icon(Icons.remove_circle),
//                         ],
//                       ),
//                     ),
//                      ]
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//     actions: <Widget>[
//       TextButton(
//         onPressed: () {
//           Navigator.of(context).pop(); // Close the dialog
//         },
//         child: const Text('Close'),
//       ),
//       TextButton(
//         onPressed: enbled == 1 ? () {
//           // Handle add to cart logic here
//           print("ADD TO CART BUTTON CLICKED:");
//           Navigator.of(context).pop(); // Close the dialog
//         } : null,
//         child: const Text('Add to Cart'),
//       ),
//     ],
//   );
// }
// }

// class RefreshValues extends ChangeNotifier{
//   int _newValue = 1;
//   int get newValue => _newValue;
//   double _newTotal = 0;
//   double get newTotal => _newTotal;
//   double _price = 0;
//   double get price => _price;


//   void setPrice(double price) {
//     _price = price;
//     notifyListeners();
//   }

//   void updatePriceValue(int newValue) {
//     _newTotal = newValue * _price;
//     notifyListeners();
//   }

//   void setValue(int newValue) {
//     _newValue = newValue;
//     notifyListeners();
//   }
//   void incrementValue() {
    
//   }
//   void decrementValue() {
    
//   }
// }


/**
 *   return Column(
                            children: [
                              Text("Price: ${provider.price.toString()}"),
                              Text("Total: ${provider.newTotal.toString()}"), // Display the calculated total
                            ],
                          );
                      }, 
                      child: SizedBox(), //Text("Price: ${double.parse(totalAmountController.text) + newTotal}"),
                      ),
 */







//   Widget _dialogBuilder(BuildContext context, Product product) {
//   int newValue = 0;
//   TextEditingController UpdateCartValueController = new TextEditingController(text: "0");
//   return AlertDialog(
//     title: const Text('Add Product'),
//     content: Container(
//       width: 600,
//       height: 600, 
//       child: Card.filled(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Product Name: ${product.name}'),
//             Text('Price: \$${product.price.toStringAsFixed(2)}'),
//             TextField(
//               decoration: InputDecoration(labelText: 'Quantity'),
//               keyboardType: TextInputType.number,
//             ),
//             Row(
//               children: [
//                 Column(
//                   children: [
//                     GestureDetector(
//                       onTap: (){
//                         newValue += int.parse(UpdateCartValueController.text) + 1;
//                         print("Add someting $newValue");
//                       },
//                       child: Row(
//                         children: [
//                           Text("Add : $newValue"),
//                           SizedBox(width: 2,),
//                           Icon(Icons.add)
//                         ],
//                       ),
//                     ),
//                     // Text(UpdateCartValueController.text),
//                     // Row(
//                     //   children: [
//                     //     TextField(
//                     //     controller: UpdateCartValueController,
//                     //     onChanged: (value) => newValue = value,
//                     //     ),
//                     //     SizedBox(width: 10,),
//                     //     GestureDetector(
//                     //       onTap:() => UpdateCartValueController.text = (int.parse(UpdateCartValueController.text) + 1).toString(),
//                     //       child: Icon(Icons.add)
//                     //       )
//                     //   ],
//                     // ),
//                     // Row(
//                     //   children: [
//                     //     Text("Add : "),
//                     //     SizedBox(width: 10,),
//                     //     Icon(Icons.add)
//                     //   ],
//                     // ),
//                   ],
//                 )
                
//               ],
//             )
//             // Add more fields as necessary
//           ],
//         ),
//       ),
//     ),
//     actions: <Widget>[
//       TextButton(
//         onPressed: () {
//           Navigator.of(context).pop(); // Close the dialog
//         },
//         child: const Text('Close'),
//       ),
//       TextButton(
//         onPressed: () {
//           // Handle add to cart logic here
//           Navigator.of(context).pop(); // Close the dialog
//         },
//         child: const Text('Add to Cart'),
//       ),
//     ],
//   );
// }
// }





















































//   Widget _dialogBuilder(BuildContext context, Product product) {
//     return AlertDialog(
//       title: const Text('Add Product'),
//       content: Card.filled(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Product Name: ${product.name}'),
//             Text('Price: \$${product.price.toStringAsFixed(2)}'),
//             TextField(
//               decoration: InputDecoration(labelText: 'Quantity'),
//               keyboardType: TextInputType.number,
//             ),
//             // Add more fields as necessary
//           ],
//         ),
//       ),
//       actions: <Widget>[
//         TextButton(
//           onPressed: () {
//             Navigator.of(context).pop(); // Close the dialog
//           },
//           child: const Text('Close'),
//         ),
//         TextButton(
//           onPressed: () {
//             // Handle add to cart logic here
//             Navigator.of(context).pop(); // Close the dialog
//           },
//           child: const Text('Add to Cart'),
//         ),
//       ],
//     );
//   }
// }


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
//         child: Padding(
//           padding: const EdgeInsets.only(top:50),
//           child: Column(  
//             children: [  
//               // Display product image  
//               Expanded(  
//                 flex: 3,  
//                 child: Padding(  
//                   padding: const EdgeInsets.all(8.0),  
//                   child: Image.asset(  
//                     imageAsset,  
//                     fit: BoxFit.contain,  
//                   ),  
//                 ),  
//               ),  
//               // Display product details  
//               Expanded(  
//                 flex: 2,  
//                 child: Column(  
//                   crossAxisAlignment: CrossAxisAlignment.center,  
//                   children: [  
//                     Text('Product Name: $productName', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
//                     Text('Type: $productType', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
//                     Text('Price: \$${price.toStringAsFixed(2)}', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
//                     Text('In Stock: $quantity', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)), 
//                 Expanded(  
//                 flex: 1,  
//                 child: Row(  
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,  
//                   children: [  
//                     ElevatedButton(  
//                       onPressed: () async {  
//                         // Create a Product instance  
//                         var product = Product(  
//                           id: DateTime.now().millisecondsSinceEpoch.toString(),  
//                           name: productName,  
//                           price: price,  
//                           type: productType,  
//                         );  
//                           _dialogBuilder(context,product);//AddToCart(product:product,quantity: 5)),  

          
//                         // Use CartService to add the product to the cart  
//                         CartService cartService = CartService();  
//                         // await cartService.addProduct(product);
                    
//                         //  Navigator.push(  
//                         //   context,  
//                         //   MaterialPageRoute(builder: (context) =>  AddProductToCart()),//AddToCart(product:product,quantity: 5)),  
//                         // ); 
//                         // await AddToCart(product:product,quantity: 5);
//                         // Show a message or a snackbar  
//                         ScaffoldMessenger.of(context).showSnackBar(  
//                           SnackBar(content: Text('$productName added to cart')),  
//                         );  
//                       },  
//                       child: Row(
//                         children: [
//                           Icon(Icons.add_circle, color: Colors.blue),  // Add icon
//                           SizedBox(width: 8),
//                           Text('Add to Cart'),
//                         ],
//                       ),  
//                     ),  
//                     ElevatedButton(  
//                       // View more details  
//                       onPressed: () {  
//                          GoRouter.of(context).push(  
//                           '/product-details',  
//                           extra: {  
//                             'productName': productName,  
//                             'productType': productType,  
//                             'imageAsset': imageAsset,  
//                             'price': price,  
//                             'quantity': quantity,  
//                           },  
//                         );   
//                       },  
//                       child: Row(
//                         children: [
//                           Icon(Icons.info, color: Colors.blue),  // Info icon
//                           SizedBox(width: 8),
//                           Text('More Details'),
//                         ],
//                       ),  
//                     ),  
//                   ],  
//                 ),  
//               ),   
//                   ],  
//                 ),  
//               ),  
//               // Buttons for actions  
             
//             ],  
//           ),
//         ),  
//       ),  
//     );  
//   }  

//   @pragma('vm:entry-point')
//   static Route<Object?> _dialogBuilder(
//       BuildContext context, Object? arguments) {
//     return DialogRoute<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Add Product'),
//           content: Card.filled(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(labelText: 'Product Name'),
//                   ),
//                 ),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(labelText: 'Quantity'),
//                   ),
//                 ),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(labelText: 'Price'),
//                   ),
//                 ),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(labelText: 'Description'),
//                     maxLines: 3,
//                   ),
//                 ),
//                 Expanded(
//                   child: Row(
//                     children: [
//                       Checkbox(
//                         value: false,
//                         onChanged: (value) {
//                           // Handle checkbox state changes
//                         },
//                       ),
//                       Text("New"),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           actions: <Widget>[
//             TextButton(
//               style: TextButton.styleFrom(
//                 textStyle: Theme.of(context).textTheme.labelLarge,
//               ),
//               child: const Text('Disable'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               style: TextButton.styleFrom(
//                 textStyle: Theme.of(context).textTheme.labelLarge,
//               ),
//               child: const Text('Enable'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
// }
// }


// class AddProductToCart1 extends StatelessWidget {
//   const AddProductToCart1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Add Product to Cart')),
//       body: Center(
//         child: OutlinedButton(
//           onPressed: () {
//             Navigator.of(context).restorablePush(_dialogBuilder);
//           },
//           child: const Text('Add To Cart'),
//         ),
//       ),
//     );
//   }

//   @pragma('vm:entry-point')
//   static Route<Object?> _dialogBuilder(
//       BuildContext context, Object? arguments) {
//     return DialogRoute<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Add Product'),
//           content: Card.filled(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(labelText: 'Product Name'),
//                   ),
//                 ),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(labelText: 'Quantity'),
//                   ),
//                 ),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(labelText: 'Price'),
//                   ),
//                 ),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(labelText: 'Description'),
//                     maxLines: 3,
//                   ),
//                 ),
//                 Expanded(
//                   child: Row(
//                     children: [
//                       Checkbox(
//                         value: false,
//                         onChanged: (value) {
//                           // Handle checkbox state changes
//                         },
//                       ),
//                       Text("New"),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           actions: <Widget>[
//             TextButton(
//               style: TextButton.styleFrom(
//                 textStyle: Theme.of(context).textTheme.labelLarge,
//               ),
//               child: const Text('Disable'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               style: TextButton.styleFrom(
//                 textStyle: Theme.of(context).textTheme.labelLarge,
//               ),
//               child: const Text('Enable'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }



 