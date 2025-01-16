import 'package:ecommerce/data/models/product.dart';
import 'package:ecommerce/features/product_details/product_card.dart';
import 'package:flutter/material.dart';
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
                    title: Text('Product Name: ${widget.product.name}'),
                    trailing: Text("Total Price: ${provider.newTotal.toStringAsFixed(2)}"),
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
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Text('Close'),
        ),
        TextButton(
          onPressed: () {
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
