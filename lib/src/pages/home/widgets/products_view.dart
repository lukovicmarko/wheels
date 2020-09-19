import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheels/src/data/productsData.dart';
import 'package:wheels/src/pages/home/widgets/product_card.dart';

class ProductsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductsData>(
      builder: (context, productsData, child) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(productsData.products.length, (index) {
              return ProductCard(product: productsData.products[index]);
            }),
          ),
        );
      },
    );
  }
}