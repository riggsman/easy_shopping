import 'package:ecommerce/core/contants/app_strings.dart';
import 'package:ecommerce/core/contants/app_styles.dart';
import 'package:ecommerce/features/gridviews.dart';
import 'package:ecommerce/features/product_details/productScrennLayout.dart';
import 'package:flutter/material.dart';
import '../../data/models/product.dart';

class HomeScreen extends StatelessWidget {
  // final List<Product> products = [
  //   Product(id: '1', name: 'Product 1', price: 20.0),
  //   Product(id: '2', name: 'Product 2', price: 30.0),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppStyle.fontSizeMedium,
        ),
        

        ),
      body: ProductScreenLayout(),
      // body: Center(
      //   child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Container(
      //             height: 300,
      //             color: Colors.blueGrey,
      //             width: 500,
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.start,
      //               children: [
      //                 Column(
      //                   mainAxisAlignment:MainAxisAlignment.start,
      //                   children: [
      //                     GridView.builder(
      //                         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //                           crossAxisCount: 2,
      //                           crossAxisSpacing: 10,
      //                           mainAxisSpacing: 10,
      //                         ),
      //                         itemCount: 2,
      //                         shrinkWrap: true,
      //                         physics: const ScrollPhysics(),
      //                         itemBuilder: (BuildContext context, int index) {
      //                           return Container(
      //                             child: Text("test"),
      //                           );
      //                         },
      //                       )
      //                   ],
      //                 )
      //               ],
      //             )
      //           ),
      //         ],
      //       )
      //     ],
      //   ),
      // )
    );
  }
}

// ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           final product = products[index];
//           return ListTile(
//             title: Text(product.name),
//             subtitle: Text("\$${product.price}"),
//             trailing: ElevatedButton(
//               onPressed: () {
//                 Provider.of<CartProvider>(context, listen: false)
//                     .addToCart(product);
//               },
//               child: const Text('Add to Cart'),
//             ),
//           );
//         },
//       ),