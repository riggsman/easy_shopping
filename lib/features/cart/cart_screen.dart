// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../data/providers/cart_provider.dart';

// class CartScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final cartProvider = Provider.of<CartProvider>(context);

//     return Scaffold(
//       appBar: AppBar(title: const Text('Cart')),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cartProvider.cart.length,
//               itemBuilder: (context, index) {
//                 final product = cartProvider.cart[index];
//                 return ListTile(
//                   title: Text(product.productName),
//                   subtitle: Text("\$${product.productPrice}"),
//                   trailing: IconButton(
//                     icon: const Icon(Icons.remove_circle),
//                     onPressed: () {
//                       cartProvider.removeFromCart(product);
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//           Text('Total: \$${cartProvider.totalPrice.toStringAsFixed(2)}'),
//         ],
//       ),
//     );
//   }
// }

import 'package:ecommerce/core/contants/app_strings.dart';
import 'package:ecommerce/core/contants/app_styles.dart';
import 'package:ecommerce/services/cart_service.dart';
import 'package:flutter/material.dart';  
import 'package:ecommerce/data/models/product.dart'; // Adjust the import as necessary  

class CartScreen extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final cartService = CartService();  
    final products = cartService.getProducts();  

    return Scaffold(
      extendBodyBehindAppBar:false,  
      extendBody: false,
      appBar: AppBar(),  
      body: products.isEmpty  
          ? Center(child: const Text('Your cart is empty'))  
          : Container(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(400,50,400,0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    // margin: EdgeInsets.only(right: 20.0, left:20.0),
                    alignment: Alignment.center,
                    child: ListTile(
                      leading: Icon(Icons.shopping_cart_outlined),
                      title: Text(
                        AppStrings.shoppingCart,
                         style: TextStyle(
                          fontSize: AppStyle.fontSizeMedium,
                          fontWeight: AppStyle.fontWeightBold,
                          color: AppStyle.gridColorDark,
                        ),
                        ),
                      titleAlignment: ListTileTitleAlignment.center,
                      trailing: Text(
                        "Total items in cart : ${products.length.toString()}",
                        style: TextStyle(
                          fontSize: AppStyle.fontSizeMedium,
                          fontWeight: AppStyle.fontWeightBold,
                          color: AppStyle.gridColorDark,
  
                        ),
                        ),
                    ),
                  ),
                    
                  // SizedBox(height: 16),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     Text(
                  //       'Number of Items : ${products.length}',
                  //       style: TextStyle(
                  //         fontSize: AppStyle.fontSizeMedium,
                  //         fontWeight: AppStyle.fontWeightBold,
                  //         color: AppStyle.gridColorDark,
                  //         ),
                  //     )
                  //   ],
                  // ),
                  SizedBox(height: 4),
                  ListView.builder(
                    itemCount: products.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final product = products[index];
                      return Card.filled(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                "Item : ${product.name}",
                                style: TextStyle(fontSize: 18),
                              ),
                              subtitle: Text(
                                "Price : \$${product.price.toString()}",
                                style: TextStyle(fontSize: 16),
                              ),
                              trailing: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Quantity : ",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    // Row(
                                    //   mainAxisAlignment: MainAxisAlignment.center,
                                    //   children: [
                                    //     IconButton(
                                    //       icon: Icon(Icons.add),
                                    //       onPressed: () => {print("plus")},
                                    //     ),
                                    //     IconButton(
                                    //       icon: Icon(Icons.remove),
                                    //       onPressed: () => {print("minus")},
                                    //     ),
                                    //   ],
                                    //   )
                                  ],
                                ),
                              ),
                            ),
                            Divider(),
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Total: \$'
                                    )
                                  ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 150, 0),
                        child: Text("Grand Total : ")),
                    ],
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => {},
                    child: Text('Checkout'),
                  ),
                   ElevatedButton(
                    onPressed: () => {
                      cartService.clearCart()
                    },
                    child: Text('Clear Cart'),
                  ),
                ],
              ),
            ),
          ),
        ),
        ),
                     
                // itemCount: products.length,  
                // itemBuilder: (context, index) {  
                //   final product = products[index];  
                //   return ListTile(  
                //     title: Text(product.name),  
                //     subtitle: Text('Price: \$${product.price.toStringAsFixed(2)}'),  
                //   );  
                // },  
              // ),
          );  
    // );  
  }  
}

// /**
//  * ListView.builder(  
//                 itemCount: products.length,  
//                 itemBuilder: (context, index) {  
//                   final product = products[index];  
//                   return ListTile(  
//                     title: Text(product.name),  
//                     subtitle: Text('Price: \$${product.price.toStringAsFixed(2)}'),  
//                   );  
//                 },  
//               ),
//  */

