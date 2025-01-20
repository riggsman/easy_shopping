

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



class ProductCardMobile extends StatelessWidget {  
  final String productName;  
  final String productType;  
  final String imageAsset;  
  final double price;  
  final int quantity;  

  const ProductCardMobile({  
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
          padding: const EdgeInsets.only(top:10),
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
                    SizedBox(
                      child: Text('$productName', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),
                    ),
                    // Text('Product Name: $productName', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
                    // Text('Type: $productType', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
                    // Text('Price: \$${price.toStringAsFixed(2)}', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)),  
                    // Text('In Stock: $quantity', style: const TextStyle(fontSize: AppStyle.fontSizeSmall, fontWeight: FontWeight.bold)), 
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
                               print("ADD TO CART BUTTON CLICKED product card screen:");
                              showDialog(
                                barrierDismissible:false,
                                context: context, 
                                builder: (BuildContext context) {
                                  return AddPRoductToCartDialogMobile(product:product);
                                  // return PD.dialogBuilderProductDetails(context,product);
                                });
                              // Show the dialog
                              // showDialog(
                              //   barrierDismissible:false,
                              //   context: context,
                              //   builder: (BuildContext context) {
                              //     return _dialogBuilder(context, product);
                              //   }
                              // );

                              // Show a message or a snackbar  
                              ScaffoldMessenger.of(context).showSnackBar(  
                                SnackBar(content: Text('$productName added to cart')),  
                              );  
                            },  
                            child: Row(
                              children: [
                                Icon(Icons.add_circle, color: Colors.blue),  
                                SizedBox(width: 8),
                                Text('Add to Cart 1'),
                              ],
                            ),  
                          ),  
                          ElevatedButton(  
                            onPressed: () {  
                              var product = Product(  
                                id: DateTime.now().millisecondsSinceEpoch.toString(),  
                                name: productName,  
                                price: price,  
                                type: productType,  
                                quantity: quantity,
                              ); 
                              PRODUCTDETAILS PD = PRODUCTDETAILS(productName:productName ,productType:productType,imageAsset:imageAsset,price:price,quantity:quantity);
                               print("ADD TO CART BUTTON CLICKED product card screen:");
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
                                Icon(Icons.info, color: Colors.blue),  
                                SizedBox(width: 8),
                                Text('Details1'),
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
  final cartProvider = Provider.of<CartProvider>(context);
  final double price = cartProvider.price;

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
            Consumer<RefreshValuesMobile>(
              builder: (context, provider, child) {
                // Initialize total price controller with the calculated total
                if (totalPriceController.text.isEmpty) {
                  totalPriceController.text = (provider.newTotal).toStringAsFixed(2);
                }

                return ListTile(
                  title: Text('Product Name: ${product.name}'),
                  trailing: Text("Price: ${price.toStringAsFixed(2)}"),
                  subtitle: Column(
                    children: [
                      TextField(
                        controller: TextEditingController(text:cartProvider.quantity.toString())//UpdateCartValueController,
                          ..selection = TextSelection.fromPosition(
                            TextPosition(offset:cartProvider.quantity.toString().length)
                            ),
                        // decoration: InputDecoration(labelText: 'Quantity'),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          int quantity = int.tryParse(value) ?? 1;
                          cartProvider.updateQuantity(quantity);
                          // provider.setPrice(itemPrice); // Set the price before calculating total
                          // provider.setValue(quantity);
                          // provider.updatePriceValue(quantity);
                          // totalPriceController.text = (provider.newTotal).toStringAsFixed(2); // Update total price text field
                        },
                      ),
                       Text("Total Price: ${cartProvider.total.toStringAsFixed(2)}"),
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
                            RefreshValuesMobile rv = Provider.of<RefreshValuesMobile>(context, listen: false);
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
                              RefreshValuesMobile rv = Provider.of<RefreshValuesMobile>(context, listen: false);
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
          // Handle add to cart logic here
          print("ADD TO CART BUTTON CLICKED product card screen:");
          Navigator.of(context).pop(); // Close the dialog
        },
        child: const Text('Add to Cart'),
      ),
    ],
  );
}
}

class RefreshValuesMobile extends ChangeNotifier {
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

class CartProvider with ChangeNotifier{
  int _quantity = 1;
  double _price;
  CartProvider(this._price);

  int get quantity => _quantity;
  double get price => _price;
  double get total => _price * _quantity;

  void updateQuantity(int newQuantity) {
    _quantity = newQuantity > 0 ? newQuantity : 1;
    print("QUANTITY : $quantity");
    notifyListeners();
  }
}