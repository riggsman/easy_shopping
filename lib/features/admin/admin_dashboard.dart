import 'package:ecommerce/features/admin/screens/add_product.dart';
import 'package:ecommerce/features/admin/screens/product_management.dart';
import 'package:ecommerce/features/admin/screens/remove_product.dart';
import 'package:ecommerce/features/admin/screens/update_product.dart';
import 'package:flutter/material.dart';
// import 'widgets/product_list.dart';
// import 'widgets/add_product_form.dart';

class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Panel')),
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            TabBar(tabs: [
              Tab(text: 'Products'),
              Tab(text: 'New Product'),
              Tab(text: 'Update Product'),
              Tab(text: 'Delete Product'),
              Tab(text: 'Analysis'),
              // Tab(text: 'Update Product'),
            ]),
            Expanded(
              child: TabBarView(
                children: [
                  // Text("LIST OF PRODUCTS HERE"),
                    ProductManagementScreen(),
                    AddProductScreen(),
                    UpdateProductScreen(),
                    DeleteProductScreen(),
                    DeleteProductScreen(),
                  // ProductManagementScreen(),
                  // ProductManagementScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
