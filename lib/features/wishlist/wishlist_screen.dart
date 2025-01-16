// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../data/providers/wishlist_provider.dart';
// import 'widgets/wishlist_item.dart';

// class WishlistScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final wishlistProvider = Provider.of<WishlistProvider>(context);

//     return Scaffold(
//       appBar: AppBar(title: const Text('Wishlist')),
//       body: ListView.builder(
//         itemCount: wishlistProvider.wishlist.length,
//         itemBuilder: (context, index) {
//           final item = wishlistProvider.wishlist[index];
//           return WishlistItemWidget(item: item);
//         },
//       ),
//     );
//   }
// }
