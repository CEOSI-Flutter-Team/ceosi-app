import 'package:flutter/material.dart';

import '../models/product_model.dart';

abstract class ProductRepositoryInterface {
  Future<List<ProductModel>> getProducts(BuildContext context);
}
