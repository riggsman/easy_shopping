
import 'dart:convert';

import 'package:ecommerce/core/contants/app_strings.dart';
import 'package:ecommerce/core/contants/app_styles.dart';
import 'package:flutter/material.dart';


class ProductCartScreen extends StatefulWidget {
  final List product;
  ProductCartScreen({super.key,required this.product});

  @override
  State<ProductCartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<ProductCartScreen> {
  
  @override
  Widget build(BuildContext context) {
    List productData = widget.product;

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0,100,0,0),
          child: Text(
            AppStrings.appName,
            style: TextStyle(
              fontSize: AppStyle.fontSizeLarge,
              color: AppStyle.gridColorDark
              ),
            ),
        ),
          centerTitle: true,
      ),
       body: Container(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(400,200,400,0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBar(
                  title : Text(
                    AppStrings.shoppingCart, 
                    style: TextStyle(
                      fontSize: AppStyle.fontSizeMedium,
                      color: AppStyle.gridColorDark
                      ),
                      ),
                  centerTitle: true,
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Number of Items : ${productData.length}',
                        style: TextStyle(
                          fontSize: AppStyle.fontSizeMedium,
                          fontWeight: AppStyle.fontWeightBold,
                          color: AppStyle.gridColorDark,
                          ),
                      )
                    ],
                  ),
                  SizedBox(height: 4),
                  ListView.builder(
                    itemCount: productData.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Card.filled(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                "Item : ${productData[index]}",
                                style: TextStyle(fontSize: 18),
                              ),
                              // subtitle: Text(
                              //   "Price : \$${productData[index][2].toString()}",
                              //   style: TextStyle(fontSize: 16),
                              // ),
                              // trailing: Container(
                              //   child: Column(
                              //     children: [
                              //       Text(
                              //         "Quantity : ${productData[index][3].toString()}",
                              //         style: TextStyle(fontSize: 16),
                              //       ),
                              //       // Row(
                              //       //   mainAxisAlignment: MainAxisAlignment.center,
                              //       //   children: [
                              //       //     IconButton(
                              //       //       icon: Icon(Icons.add),
                              //       //       onPressed: () => {print("plus")},
                              //       //     ),
                              //       //     IconButton(
                              //       //       icon: Icon(Icons.remove),
                              //       //       onPressed: () => {print("minus")},
                              //       //     ),
                              //       //   ],
                              //       //   )
                              //     ],
                              //   ),
                              // ),
                            ),
                            Divider(),
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Total: \$${productData[index][2] * productData[index][3]}'
                                    )
                                  ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => {},
                    child: Text('Checkout'),
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

