import 'package:ecommerce/core/contants/app_strings.dart';
import 'package:ecommerce/core/contants/app_styles.dart';
import 'package:ecommerce/core/layouts/responsive_layout.dart';
import 'package:ecommerce/features/gridviews.dart';
import 'package:ecommerce/features/product_details/productScrennLayout.dart';
import 'package:ecommerce/features/product_details/productScrennLayoutMobile.dart';
 import 'package:flutter/material.dart';
import '../../data/models/product.dart';

class HomeScreen extends StatelessWidget {
  

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
      body: ResponsiveLayout(mobileLayout: ProductScreenLayoutMobile(), webLayout: ProductScreenLayout(),tabletLayout: ProductScreenLayoutTablet(),) ,
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