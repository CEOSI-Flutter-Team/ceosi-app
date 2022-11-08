import 'package:ceosi_app/screens/ceosi_rewards/widgets/product/single_product_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductListWidget extends StatelessWidget {
  late String query;

  ProductListWidget({super.key, required this.query});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('CEOSI-REWARDS-ITEMS')
              .where('productCategory', isEqualTo: query)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              print('error');
              return const Center(child: Text('Error'));
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              print('waiting');
              return const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Center(
                    child: CircularProgressIndicator(
                  color: Colors.black,
                )),
              );
            }

            final data = snapshot.requireData;
            return ListView.builder(
                itemCount: snapshot.data?.size ?? 0,
                itemBuilder: ((context, index) {
                  return ProductItemWidget(
                    productName: data.docs[index]['productName'],
                    productCategory: data.docs[index]['productCategory'],
                    pointsEquivalent: data.docs[index]['pointsEquivalent'],
                    imageURL: data.docs[index]['productImage'],
                  );
                }));
          }),
    );
  }
}
