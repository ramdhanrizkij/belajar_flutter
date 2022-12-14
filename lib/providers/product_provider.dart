import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../services/product_service.dart';


class ProductProvider with ChangeNotifier {
  List<ProductModel> products = [];

  // List<ProductModel> get products => _products;

  // set products(List<ProductModel> products) {
  //   _products = products;
  //   notifyListeners();
  // }

  Future<void> getProducts() async {
    try {
      List<ProductModel> data = await ProductService().getProducts();
      products = data;
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
