// import 'package:ecommerce/data/models/product.dart';
// import 'package:ecommerce/features/product_details/widgets/product_details.dart';
// import 'package:flutter/material.dart';
// import '../features/home/home_screen.dart';
// import '../features/cart/cart_screen.dart';


// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(builder: (_) => HomeScreen());
//       case '/cart':
//         return MaterialPageRoute(builder: (_) => CartScreen());
//       case '/product-details':
//         final _product = settings.arguments as Product;
//         return MaterialPageRoute(builder: (_) => ProductDetails(product: _product));
//       default:
//         return MaterialPageRoute(
//           builder: (_) => const Scaffold(
//             body: Center(child: Text('404 - Page not found')),
//           ),
//         );
//     }
//   }
// }


// class AppRouter {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case '/product-details':
//         final _product = settings.arguments as Product;
//         return MaterialPageRoute(
//           builder: (_) => ProductDetails(product: _product),
//         );
//       default:
//         return MaterialPageRoute(
//           builder: (_) => const Scaffold(
//             body: Center(child: Text('Page not found')),
//           ),
//         );
//     }
//   }
// }