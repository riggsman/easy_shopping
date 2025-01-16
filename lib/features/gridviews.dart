
import 'package:ecommerce/core/contants/app_strings.dart';
import 'package:ecommerce/core/contants/app_styles.dart';
import 'package:ecommerce/features/product_details/product_card.dart';
import 'package:flutter/material.dart';

class ELayout extends StatelessWidget {
  ELayout({Key? key}) : super(key: key);

  final TextEditingController searchInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.appName),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 400,
                  child: TextField(
                    controller: searchInputController,
                    decoration: const InputDecoration(
                      hintText: 'Search product',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    final query = searchInputController.text.trim();
                    print("THE SEARCH QUERY PASSED IS $query");
                  },
                  child: const Text('Search'),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 8, // Number of items
              itemBuilder: (context, index) {
                return ProductCard(
                  productName: 'Sample Product ${index + 1}',
                  productType: 'Sample Type',
                  imageAsset: 'assets/netflix.jpeg',
                  price: 9.99,
                  quantity:10
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

