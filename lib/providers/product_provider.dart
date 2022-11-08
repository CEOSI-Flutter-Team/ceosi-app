import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product_model.dart';
import '../repositories/productRepository.dart';

final getProductListProvider =
    FutureProvider.family<List<ProductModel>, BuildContext>(
        (ref, context) async {
  return ProductRepository().getProducts(context);
});
