import 'dart:convert';

import 'package:ceosi_app/repositories/product_repository_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductRepository implements ProductRepositoryInterface {
  @override
  Future<List<ProductModel>> getProducts(BuildContext context) async {
    print('called');
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
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
    String? productDetails,
    String? reminders,
  ) async {
    final docUser =
        FirebaseFirestore.instance.collection('CEOSI-REWARDS-ITEMS').doc();

    final json = {
      'product_name': productName,
      'product_category': productCategory,
      'points_equivalent': pointsEquivalent,
      'product_image': productImage,
      'product_details': productDetails,
      'reminders': reminders,
      'id': docUser.id,
    };

    await docUser.set(json);
  }

  @override
  Future addItemClaimed(
    String productName,
    String productCategory,
    int pointsEquivalent,
    String productImage,
    String userEmail,
  ) async {
    final docUser = FirebaseFirestore.instance
        .collection('CEOSI-REWARDS-ITEMS-CLAIMED')
        .doc();

    final json = {
      'product_name': productName,
      'product_category': productCategory,
      'points_equivalent': pointsEquivalent,
      'product_image': productImage,
      'id': docUser.id,
      'email': userEmail,
    };

    await docUser.set(json);
  }
}
