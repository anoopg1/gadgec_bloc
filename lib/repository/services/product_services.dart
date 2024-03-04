import 'dart:convert';

import 'package:gadgec_bloc/repository/model/product_model/product.dart';
import 'package:gadgec_bloc/repository/model/product_model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductServices {
  Future<List<Product>?> fetchProducts() async {
    final response =
        await http.get(Uri.parse("https://dummyjson.com/products"));
    final convertedData = jsonDecode(response.body);
    var s = ProductModel.fromJson(convertedData);
    var productList = s.products;
    print(productList);

    return productList;
  }
}
