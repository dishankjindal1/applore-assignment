import 'dart:convert';
import 'package:applore_assignment_app/modal/data_modal/data.modal.dart';
import 'package:applore_assignment_app/modal/service/product/product.service.dart';

class ProductRepository {
  final ProductService productService = ProductService();

  Future<Product> fetch(String id) async {
    final String fetchProductData = await productService.getResponse(path: id);
    final json = jsonDecode(fetchProductData);
    return Product.fromJson(json);
  }

  Future<List<Product>> fetchList() async {
    final String fetchProductData = await productService.getResponse();
    final json = jsonDecode(fetchProductData);
    return (json as List).map((e) => Product.fromJson(e)).toList();
  }
}
