import 'package:flutter/material.dart';

class ProductUpdateDeleteScreen extends StatelessWidget {
  final List<Map<String, dynamic>> _products = [
    {'name': 'Product 1', 'type': 'Type A', 'price': 50.0, 'isNew': true},
    {'name': 'Product 2', 'type': 'Type B', 'price': 30.0, 'isNew': false},
  ];

  void _updateProduct(BuildContext context, Map<String, dynamic> product) {
    // Navigate to update product screen
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Update feature not yet implemented")));
  }

  void _deleteProduct(BuildContext context, Map<String, dynamic> product) {
    // Delete product logic
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Product Deleted")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Manage Products')),
      body: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) {
          final product = _products[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(product['name']),
              subtitle: Text('Type: ${product['type']} - \$${product['price']}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit, color: Colors.blue),
                    onPressed: () => _updateProduct(context, product),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _deleteProduct(context, product),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
