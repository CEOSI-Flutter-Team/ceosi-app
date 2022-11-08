import 'dart:convert';

import 'package:ceosi_app/screens/ceosi_rewards/repositories/product_repository_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductRepository implements ProductRepositoryInterface {
  @override
  Future<List<ProductModel>> getProducts(BuildContext context) async {
    print('called');
    await Future.delayed(const Duration(seconds: 3));
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/products.json');
    final body = json.decode(data);

    return body.map<ProductModel>(ProductModel.fromJson).toList();
  }

  Future addItem(
    String? productName,
    String? productCategory,
    String? pointsEquivalent,
    String? productImage,
  ) async {
    final docUser =
        FirebaseFirestore.instance.collection('CEOSI-REWARDS-ITEMS').doc();

    final json = {
      'productName': productName,
      'productCategory': productCategory,
      'pointsEquivalent': pointsEquivalent,
      'productImage': productImage,
      'id': docUser.id,
    };

    await docUser.set(json);
  }
}
