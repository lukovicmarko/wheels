import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:wheels/src/models/Product.dart';
import 'package:wheels/src/modules/http.dart';

class ProductsData extends ChangeNotifier {
  ProductsData() {
    getProducts();
  }

  List<Product> _products = [];

  Future getProducts() async {
    RequestResult requestResult =
        RequestResult('http://192.168.0.19:5000/products');

    final productsResponse = await requestResult.getData();

    productsResponse['data'].forEach((product) {
      _products.add(
        Product(
          id: product['id'],
          name: product['name'],
          price: product['price'].toDouble(),
          images: product['image'],
          description: product['productDescription'],
        ),
      );
    });

    notifyListeners();
  }

  UnmodifiableListView<Product> get products => UnmodifiableListView(_products);
}
