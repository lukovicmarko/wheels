import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheels/src/data/productsData.dart';
import 'package:wheels/src/pages/favorites/widgets/favorite_product.dart';

class FavoritesProductsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductsData>(builder: (context, products, child) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: products.products.length,
        itemBuilder: (BuildContext context, int index) {
          return FavoriteProduct(product: products.products[index]);
        },
      );
    });
  }
}
