import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheels/src/data/productsData.dart';

class FavoritesProductsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductsData>(builder: (context, products, child) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: products.favoritesProducts.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Text(products.favoritesProducts[index].name),
          );
        },
      );
    });
  }
}
