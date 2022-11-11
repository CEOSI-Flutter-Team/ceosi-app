import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/colors.dart';
import '../../../constants/icons.dart';
import '../../../constants/images.dart';
import '../../../widgets/text_widget.dart';

class BannerWidget extends ConsumerWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Stream<DocumentSnapshot> listProducts = FirebaseFirestore.instance
        .collection('CEOSI-USERS')
        .doc('GZ4hqaEj1vggZeeJ0j0j')
        .snapshots();
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          width: 350,
          height: 120,
          child: StreamBuilder<DocumentSnapshot>(
              stream: listProducts,
              builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: Text('Loading'));
                } else if (snapshot.hasError) {
                  return const Center(child: Text('Something went wrong'));
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                dynamic data = snapshot.data;

                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      data['profile_image'],
                      height: 75,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BoldTextWidget(
                            color: Colors.black,
                            fontSize: 16,
                            text: data['name']),
                        NormalTextWidget(
                            color: Colors.black,
                            fontSize: 12,
                            text: data['position'])
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            CustomImages().coesiIcon,
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                CustomIcons().coinIcon,
                                height: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              BoldTextWidget(
                                  color: CustomColors().primaryColor,
                                  fontSize: 14,
                                  text: '${data['user_points']}cc')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
