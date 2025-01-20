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
      appBar: AppBar(title: Text("Cart"),),  
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
                                      "Quantity : ${product.quantity.toString()}",
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
                                    'Total: \$${product.price * product.quantity}'
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 6),
                  Column(
                   
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 150, 0),
                            child: Text("Grand Total : \FCFA${products.fold(0, (total, product) => total + product.price.toInt() * product.quantity).toStringAsFixed(2)}" ),
                            ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () => {
                              cartService.clearCart(),
                              Navigator.of(context).pop(),
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.shopping_cart_checkout_sharp,
                                  color: Colors.blueAccent
                                  ),
                                Text('Checkout'),
                                ],
                              ),
                          ),
                          SizedBox(width: 16),
                          TextButton(
                            onPressed: () => { 
                              cartService.clearCart(),
                              Navigator.of(context).pop(),
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => CartScreen()
                                  ),
                                )
                              },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.clear_all_rounded,
                                  color: Colors.blueAccent
                                  ),
                                Text('Clear Cart'),
                                ],
                              ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        ),
          );  
  }  
}




class CartScreenMobile extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final cartService = CartService();  
    final products = cartService.getProducts();  

    return Scaffold(
      extendBodyBehindAppBar:false,  
      extendBody: false,
      appBar: AppBar(title: Text("Cart Mobile"),),
      body: products.isEmpty  
          ? Center(child: const Text('Your cart is empty'))  
          : Container(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    // margin: EdgeInsets.only(right: 20.0, left:20.0),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                         "Total items in cart : ${products.length.toString()}",
                          style: TextStyle(
                            fontSize: AppStyle.fontSizeSmall,
                            fontWeight: AppStyle.fontWeightBold,
                            color: AppStyle.gridColorDark,
                          ),
                        ),
                      ],
                    )
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
                                      "Quantity : ${product.quantity.toString()}",
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
                                    'Total: \$${product.price * product.quantity}'
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 150, 0),
                            child: Text("Grand Total : \FCFA${products.fold(0, (total, product) => total + product.price.toInt() * product.quantity).toStringAsFixed(2)}" ),
                            ),
                        ],
                      ),
                      SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [             
                            ElevatedButton(
                              onPressed: () => {
                                print("CHECKOUT COMPLETE"),
                                cartService.clearCart()
                              },
                              child: Text('Checkout'),
                            ),
                             SizedBox(width: 25),
                            ElevatedButton(
                              onPressed: () => {
                                cartService.clearCart()
                              },
                              child: Text('Clear Cart'),
                            ),
                                    ],
                                  ),
                              ],
                            ),

                ],
              ),
            ),
          ),
        ),
        ),
          );  
    // );  
  }  
}
