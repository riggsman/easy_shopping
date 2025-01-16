// // import 'package:ecommerce/data/models/product.dart';
// // import 'package:ecommerce/features/product_details/widgets/product_details.dart';
// // import 'package:go_router/go_router.dart';

// // class AppRoutes {
// //   final GoRouter router;

// //   AppRoutes()
// //       : router = GoRouter(
// //           routes: [
// //             // Product Details Route
// //             GoRoute(
// //               path: '/product-details',
// //               builder: (context, state) {
// //                 final product = state.extra as Product; // Retrieve the product object
// //                 return ProductDetails(product: product);
// //               },
// //             ),
// //           ],
// //         );
// // }

// import 'package:ecommerce/data/models/product.dart';
// import 'package:flutter/material.dart';
// import 'package:ecommerce/features/product_details/widgets/product_details.dart';



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
