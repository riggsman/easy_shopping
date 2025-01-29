import 'package:ecommerce/data/models/product.dart';
import 'package:ecommerce/features/product_details/product_card.dart';
import 'package:ecommerce/features/product_details/product_card_mobile.dart';
import 'package:ecommerce/services/cart_service.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

  class AddPRoductToCartDialog extends StatefulWidget {
  final Product product;

  AddPRoductToCartDialog({required this.product});

  @override
  _AddPRoductToCartDialog createState() => _AddPRoductToCartDialog();
}

class _AddPRoductToCartDialog extends State<AddPRoductToCartDialog> {
  late TextEditingController UpdateCartValueController;
  late TextEditingController totalPriceController;

  @override
  void initState() {
    super.initState();
    UpdateCartValueController = TextEditingController(text: "1"); // Set initial value to 1
    totalPriceController = TextEditingController();

     // Initialize the total price based on the product price
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = Provider.of<RefreshValues>(context, listen: false);
      totalPriceController.text = (provider.newTotal).toStringAsFixed(2);
    });
  }

  @override
  void dispose() {
    UpdateCartValueController.dispose();
    totalPriceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final double price = cartProvider.price;
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
                    title: Text('Product: ${widget.product.name}'),
                    trailing: Text("Total: ${provider.newTotal.toStringAsFixed(2)}"),
                    subtitle: Column(
                      children: [
                        TextField(
                          controller: UpdateCartValueController,
                          decoration: InputDecoration(labelText: 'Quantity'),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            int quantity = int.tryParse(value) ?? 0;
                            provider.setPrice(widget.product.price); // Set the price before calculating total
                            provider.setValue(quantity);
                            provider.updatePriceValue(quantity);
                            totalPriceController.text = (provider.newTotal).toStringAsFixed(2); // Update total price text field
                          },
                        ),
                        TextField(
                          controller: totalPriceController,
                          decoration: InputDecoration(labelText: 'Total Price'),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            double customTotal = double.tryParse(value) ?? 0;
                            provider.setCustomTotal(customTotal); // Update provider with custom total
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
              // Additional UI elements...
            ],
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            // Navigator.of(context).pop(); // Close the 
            print("QUANTITY ${UpdateCartValueController.text}");
          },
          child: const Text('Close'),
        ),
        TextButton(
          onPressed: () async {
            Navigator.of(context).pop(); // Close the dialog
            Fluttertoast.showToast(
              msg:"Product added to cart successfully",  
              toastLength: Toast.LENGTH_LONG, 
              gravity:  ToastGravity.BOTTOM,
              webPosition: 'center',
              ); 
             // Create a Product instance  
            var product = Product(  
              id: DateTime.now().millisecondsSinceEpoch.toString(), // Unique ID  
              name: widget.product.name,  
              price: price,  
              type: widget.product.type,
              quantity: int.tryParse(UpdateCartValueController.text)?? 1,  
              image_url: widget.product.image_url 
            );  
             // Use CartService to add product to cart  
            CartService cartService = CartService();  
            await cartService.addProduct(product); 
          
            // Handle add to cart logic here
            print("ADD TO CART BUTTON CLICKED web dialog:");
           

          },
          child: const Text('Add to Cart'),
        ),
      ],
    );
  }
}

class AddPRoductToCartDialogMobile extends StatefulWidget {
  final Product product;

  AddPRoductToCartDialogMobile({required this.product});

  @override
  _AddPRoductToCartDialogMobile createState() => _AddPRoductToCartDialogMobile();
}

class _AddPRoductToCartDialogMobile extends State<AddPRoductToCartDialogMobile> {
  
  late TextEditingController UpdateCartValueController;
  late TextEditingController totalPriceController;

  @override
  void initState() {
    super.initState();
    UpdateCartValueController = TextEditingController(text: "1"); // Set initial value to 1
    totalPriceController = TextEditingController();

     // Initialize the total price based on the product price
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = Provider.of<RefreshValuesMobile>(context, listen: false);
      totalPriceController.text = (provider.newTotal).toStringAsFixed(2);
    });
  }

  @override
  void dispose() {
    UpdateCartValueController.dispose();
    totalPriceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      final cartProvider = Provider.of<CartProvider>(context);
      final double price = cartProvider.price;

    return AlertDialog(
      title: const Text('Add Product'),
      content: Container(
        width: 600,
        height: 250,
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
                    title: Text('${widget.product.name}'),
                    // trailing: Text("Total: ${widget.product.price}"),  //${provider.newTotal.toStringAsFixed(2)}
                    subtitle: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text( "Price: ${cartProvider.price}" ),
                        TextField(
                           controller: TextEditingController(text:cartProvider.quantity.toString())
                           ..selection = TextSelection.fromPosition(
                            TextPosition(offset:cartProvider.quantity.toString().length)
                            ),
                          decoration: InputDecoration(labelText: 'Quantity'),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            int quantity = int.tryParse(value) ?? 1;
                            print("CURREENT QUANTITY $quantity");
                            cartProvider.updateQuantity(quantity);
                          },
                        ),
                        
                        Text("Total: ${cartProvider.total.toStringAsFixed(2)}"),
                        Text("Tap on the quantity field to modify the order.")
                      ],
                    ),
                  );
                },
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
          onPressed: () async {
            // Create a Product instance  
            var product = Product(  
              id: DateTime.now().millisecondsSinceEpoch.toString(), // Unique ID  
              name: widget.product.name,  
              price: price,  
              type: widget.product.type,  
              quantity: cartProvider.quantity, 
              image_url: widget.product.image_url
            );
            // print("NEW QUANTITY FROM PROVIDER ${cartProvider.quantity}");
            //  cartProvider.updateQuantity(quantity);
             // Use CartService to add product to cart  
            CartService cartService = CartService();  
            await cartService.addProduct(product);  
            // Show a message or a snackbar 
            Fluttertoast.showToast(
              msg:"Product added to cart",  
              toastLength: Toast.LENGTH_LONG, 
              gravity:  ToastGravity.CENTER,
              webPosition: 'center',
              );
            // ScaffoldMessenger.of(context).showSnackBar(  
            //   SnackBar(content: Text('${widget.product.name} added to cart')),  
            // );  
            // Handle add to cart logic here
             print("NEW QUANTITY FROM PROVIDER ${cartProvider.quantity.toString()}");
            Navigator.of(context).pop(); // Close the dialog

          },
          child: const Text('Add to Cart'),
        ),
      ],
    );
  }
}

class AddPRoductToCartDialogTablet extends StatefulWidget {
  final Product product;

  AddPRoductToCartDialogTablet({required this.product});

  @override
  _AddPRoductToCartDialogTablet createState() => _AddPRoductToCartDialogTablet();
}

class _AddPRoductToCartDialogTablet extends State<AddPRoductToCartDialogTablet> {
  
  late TextEditingController UpdateCartValueController;
  late TextEditingController totalPriceController;

  @override
  void initState() {
    super.initState();
    UpdateCartValueController = TextEditingController(text: "1"); // Set initial value to 1
    totalPriceController = TextEditingController();

     // Initialize the total price based on the product price
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = Provider.of<RefreshValuesMobile>(context, listen: false);
      totalPriceController.text = (provider.newTotal).toStringAsFixed(2);
    });
  }

  @override
  void dispose() {
    UpdateCartValueController.dispose();
    totalPriceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      final cartProvider = Provider.of<CartProvider>(context);
      final double price = cartProvider.price;

    return AlertDialog(
      title: const Text('Add Product'),
      content: Container(
        width: 600,
        height: 250,
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
                    title: Text('${widget.product.name}'),
                    // trailing: Text("Total: ${widget.product.price}"),  //${provider.newTotal.toStringAsFixed(2)}
                    subtitle: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text( "Price: ${cartProvider.price}" ),
                        TextField(
                           controller: TextEditingController(text:cartProvider.quantity.toString())
                           ..selection = TextSelection.fromPosition(
                            TextPosition(offset:cartProvider.quantity.toString().length)
                            ),
                          decoration: InputDecoration(labelText: 'Quantity'),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            int quantity = int.tryParse(value) ?? 1;
                            print("CURREENT QUANTITY $quantity");
                            cartProvider.updateQuantity(quantity);
                          },
                        ),
                        
                        Text("Total: ${cartProvider.total.toStringAsFixed(2)}"),
                        Text("Tap on the quantity field to modify the order.")
                      ],
                    ),
                  );
                },
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
          onPressed: () async {
            // Create a Product instance  
            var product = Product(  
              id: DateTime.now().millisecondsSinceEpoch.toString(), // Unique ID  
              name: widget.product.name,  
              price: price,  
              type: widget.product.type,  
              quantity: cartProvider.quantity, 
              image_url: widget.product.image_url
            );
            // print("NEW QUANTITY FROM PROVIDER ${cartProvider.quantity}");
            //  cartProvider.updateQuantity(quantity);
             // Use CartService to add product to cart  
            CartService cartService = CartService();  
            await cartService.addProduct(product);  
            // Show a message or a snackbar 
            Fluttertoast.showToast(
              msg:"Product added to cart",  
              toastLength: Toast.LENGTH_LONG, 
              gravity:  ToastGravity.CENTER,
              webPosition: 'center',
              );
            // ScaffoldMessenger.of(context).showSnackBar(  
            //   SnackBar(content: Text('${widget.product.name} added to cart')),  
            // );  
            // Handle add to cart logic here
             print("NEW QUANTITY FROM PROVIDER ${cartProvider.quantity.toString()}");
            Navigator.of(context).pop(); // Close the dialog

          },
          child: const Text('Add to Cart'),
        ),
      ],
    );
  }
}
