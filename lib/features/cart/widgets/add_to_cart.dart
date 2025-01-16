
import 'dart:convert';

import 'package:ecommerce/core/contants/app_strings.dart';
import 'package:ecommerce/core/contants/app_styles.dart';
import 'package:ecommerce/data/models/product.dart';
import 'package:flutter/material.dart';


class AddToCart extends StatefulWidget {
  int quantity = 0;  
  Product product;
  AddToCart({super.key,required this.product,required this.quantity});

  @override
  State<AddToCart> createState() => _CartScreenState();
}

class _CartScreenState extends State<AddToCart> {
  
  @override
  Widget build(BuildContext context) {
    var productData = widget.product;

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
       body: AddProductToCart()
    );
  }
}


class AddProductToCart extends StatelessWidget {
  const AddProductToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Product to Cart')),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Navigator.of(context).restorablePush(_dialogBuilder);
          },
          child: const Text('Add To Cart'),
        ),
      ),
    );
  }

  @pragma('vm:entry-point')
  static Route<Object?> _dialogBuilder(
      BuildContext context, Object? arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add Product'),
          content: Card.filled(
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Product Name'),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Quantity'),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Price'),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Description'),
                    maxLines: 3,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {
                          // Handle checkbox state changes
                        },
                      ),
                      Text("New"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Enable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}