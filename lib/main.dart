import 'package:ecommerce/core/contants/app_strings.dart';
import 'package:ecommerce/data/cache/hive_cache_handler.dart';
import 'package:ecommerce/data/providers/order_provider.dart';
import 'package:ecommerce/features/admin/admin_dashboard.dart';
import 'package:ecommerce/features/cart/widgets/cart.dart';
import 'package:ecommerce/features/home/home_screen.dart';
import 'package:ecommerce/features/product_details/product_card.dart';
import 'package:ecommerce/features/product_details/product_details.dart';
import 'package:ecommerce/services/hive_Initialiser_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'data/providers/cart_provider.dart';
// import 'routes/route_generator.dart';

void main() {
  InitialiseHiveBox initialiseHiveBox = InitialiseHiveBox();
  initialiseHiveBox.intialise();
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  Future<List<dynamic>> getProducts() async {
    HiveCache cache =  HiveCache();
    final product = await cache.getListData('product');
    return product;
  }
  @override
  Widget build(BuildContext context) {
   
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => OrderProvider(),),
        ChangeNotifierProvider(create: (BuildContext context) => RefreshValues(),),
      
      ],
      
      child: MaterialApp.router(
        title: AppStrings.appName,
        // initialRoute: '/',
        // onGenerateRoute: RouteGenerator.generateRoute,
        // theme: ThemeData.light(),
        routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => HomeScreen(),
          ),
          GoRoute(
            path: '/product-cart',
            builder: (context, state) {
             return ProductCartScreen(product: getProducts as List );
            //  ProductCartScreen(product:[["SAMPLE PRODUCT 1","ELECTRONICS",20,50],["SAMPLE PRODUCT 2","CUSMETICS",10,30],["SAMPLE PRODUCT 3","CUSMETICS",10,30]]),
            }
          //   builder: (BuildContext context, GoRouterState state) {
          //     // final Map<String, dynamic>? product = state.extra as Map<String, dynamic>?;
          //     // return ProductDetails(product: product);
          // },
          ),
          GoRoute(
              path: '/product-details',
              builder: (context, state) {
                // Extract the data passed via `extra`
                final extraData = state.extra as Map<String, dynamic>?;

                if (extraData == null) {
                  return const Text('No product data available.');
                }

                // Access data
                final productName = extraData['productName'];
                final productType = extraData['productType'];
                final imageAsset = extraData['imageAsset'];
                final price = extraData['price'];
                final quantity = extraData['quantity'];

                // Pass the data to the ProductDetails screen
                return ProductDetails(
                  productName: productName,
                  productType: productType,
                  imageAsset: imageAsset,
                  price: price,
                  quantity: quantity,
                );
              },
            ),
          GoRoute(
            path: '/admin-dashboard',
            builder: (context, state) =>   AdminDashboard(),
          )
        ],
        errorBuilder: (context, state) {
        return Scaffold(
          body: Center(child: Text('404 - Page not found!')),
        );
      },

      ),
      ),
    );
  }
}





// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routerConfig: GoRouter(
//         routes: [
//           GoRoute(
//             path: '/',
//             builder: (context, state) => const HomePage(),
//           ),
//           GoRoute(
//             path: '/product-details',
//             builder: (context, state) => const ProductDetails(),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: ProductCard(
//         productName: 'Sample Product',
//         productType: 'Electronics',
//         imageAsset: 'assets/galaxy.jpg',
//         price: 99.99,
//         quantity: 10,
//       ),
//     );
//   }
// }


// GoRouter(
//   routes: [
    
//   ],
// );
