
import 'package:ecommerce/core/contants/app_strings.dart';
import 'package:ecommerce/core/contants/app_styles.dart';
import 'package:ecommerce/data/cache/hive_cache_handler.dart';
import 'package:ecommerce/features/admin/admin_dashboard.dart';
import 'package:ecommerce/features/auth/login_screen.dart';
import 'package:ecommerce/features/cart/cart_screen.dart';
import 'package:ecommerce/features/cart/widgets/cart.dart';
import 'package:ecommerce/features/product_details/product_card.dart';
import 'package:ecommerce/features/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marquee/marquee.dart';

class ProductScreenLayout extends StatelessWidget {
  ProductScreenLayout({Key? key}) : super(key: key);

  final TextEditingController searchInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            // Text(AppStrings.appName),
            SizedBox(
              height: 25, // Adjust marquee height
              child: Marquee(
                text: "Welcome to ${AppStrings.appName}! Enjoy seamless shopping 🚀✨.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                blankSpace: 20.0,
                velocity: 50.0,
                startPadding: 10.0,
                accelerationDuration: Duration(seconds: 1),
                decelerationDuration: Duration(milliseconds: 500),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              
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
                   Navigator.push(
                    context,
                     MaterialPageRoute<void>(
                    builder: (BuildContext context) =>  SearchScreen(),
                  ),
                   );
                  },
                  child: const Text('Search'),
                ),
                const Spacer(flex: 1),
                GestureDetector(
                  onTap: () async { 
                    // HiveCache cache = HiveCache();
                    // List product = await cache.getListData("product");
                    // print(product.toString());
                     Navigator.push(  
                        context,  
                        MaterialPageRoute(builder: (context) => CartScreen()),  
                      );  
                   },
                  child: SizedBox(
                    width: 50,
                    child: Icon(
                      Icons.shopping_cart_checkout_rounded,
                      color: AppStyle.gridColorDark,
                      size: 50,
                      ),
                  ),
                ),
                SizedBox(width: 10,),
                GestureDetector(
                  onTap: () async { 
                    // HiveCache cache = HiveCache();
                    // List product = await cache.getListData("product");
                    // print(product.toString());
                     Navigator.push(  
                        context,  
                        MaterialPageRoute(builder: (context) => LoginScreen()), //AdminDashboard()), // LoginScreen() 
                      );  
                   },
                  child: SizedBox(
                    width: 50,
                    child: Icon(
                      Icons.login_rounded,
                      color: AppStyle.gridColorDark,
                      size: 50,
                      ),
                  ),
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
                  imageAsset: 'mug2.png',
                  price: 19.99,
                  quantity: 10
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

