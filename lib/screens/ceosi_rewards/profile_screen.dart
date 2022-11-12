import 'package:ceosi_app/providers/user_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/colors.dart';
import '../../constants/icons.dart';
import '../../constants/images.dart';
import '../../widgets/text_widget.dart';
import 'widgets/banner_widget.dart';
import 'widgets/drawer_widget.dart';
import 'widgets/header/header_widget.dart';

class ProfileScreenReward extends StatefulWidget {
  const ProfileScreenReward({super.key});

  @override
  State<ProfileScreenReward> createState() => _ProfileScreenRewardState();
}

class _ProfileScreenRewardState extends State<ProfileScreenReward> {
  bool _index = true;
  bool _index1 = false;

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: const DrawerWidget(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              child: Stack(
                children: [
                  HeaderWidget(
                    headerTitle: 'PROFILE',
                  ),
                  const BannerWidget(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ChoiceChip(
                    onSelected: ((value) {
                      setState(() {
                        _index = true;
                        _index1 = false;
                        _currentIndex = 0;
                      });
                    }),
                    selectedColor: CustomColors().primaryColor,
                    label: const NormalTextWidget(
                        color: Colors.white,
                        fontSize: 12,
                        text: 'Rewards Claimed'),
                    selected: _index),
                ChoiceChip(
                    selectedColor: CustomColors().primaryColor,
                    onSelected: ((value) {
                      setState(() {
                        _index1 = true;
                        _index = false;
                        _currentIndex = 1;
                      });
                    }),
                    label: const NormalTextWidget(
                        color: Colors.white,
                        fontSize: 12,
                        text: 'Rewards Earned'),
                    selected: _index1)
              ],
            ),
            Expanded(
              child: SizedBox(
                child: IndexedStack(
                  index: _currentIndex,
                  children: const [
                    RewardsClaimedListItemWidget(),
                    ListRewardsEarnedWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RewardsClaimedListItemWidget extends ConsumerWidget {
  const RewardsClaimedListItemWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userIdProvider = ref.watch(getUserId.notifier).state;

    final Stream<DocumentSnapshot> listProducts = FirebaseFirestore.instance
        .collection('CEOSI-USERS')
        .doc(userIdProvider)
        .snapshots();

    return SizedBox(
        child: StreamBuilder<DocumentSnapshot>(
            stream: listProducts,
            builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: Text('Loading'));
              } else if (snapshot.hasError) {
                return const Center(child: Text('Something went wrong'));
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              dynamic data = snapshot.data;

              List itemList = data['claimed_rewards'];

              return ListView.builder(
                  itemCount: itemList.length,
                  itemBuilder: ((context, index) {
                    print('called');
                    print(userIdProvider);
                    return RewardsClaimedSingleItemWidget(
                      productName: itemList[index]['productName'],
                      productCategory: itemList[index]['productCategory'],
                      pointsEquivalent: itemList[index]['pointsEquivalent'],
                      productImage: itemList[index]['productImage'],
                    );
                  }));
            }));
  }
}

class RewardsClaimedSingleItemWidget extends StatefulWidget {
  final String productName;
  final String productCategory;
  final int pointsEquivalent;

  final String productImage;

  const RewardsClaimedSingleItemWidget(
      {super.key,
      required this.productName,
      required this.productCategory,
      required this.pointsEquivalent,
      required this.productImage});

  @override
  State<RewardsClaimedSingleItemWidget> createState() =>
      _RewardsClaimedSingleItemWidgetState();
}

class _RewardsClaimedSingleItemWidgetState
    extends State<RewardsClaimedSingleItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            Image.network(
              widget.productImage,
              height: 60,
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BoldTextWidget(
                          color: Colors.black,
                          fontSize: 16,
                          text: widget.productName),
                      NormalTextWidget(
                          color: Colors.black,
                          fontSize: 12,
                          text: 'Type: ${widget.productCategory}'),
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Image.asset(
              CustomIcons().coinIcon,
              height: 22,
            ),
            const SizedBox(
              width: 10,
            ),
            BoldTextWidget(
                color: CustomColors().primaryColor,
                fontSize: 14,
                text: '-${widget.pointsEquivalent}cc'),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class ListRewardsEarnedWidget extends StatelessWidget {
  const ListRewardsEarnedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ((context, index) {
      return const RewardsEarnedWidget();
    }));
  }
}

class RewardsEarnedWidget extends StatelessWidget {
  const RewardsEarnedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    CustomImages().sampleProfileImage,
                    height: 50,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const NormalTextWidget(
                      color: Colors.black, fontSize: 10, text: 'ADMIN'),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        NormalTextWidget(
                            color: Colors.black,
                            fontSize: 8,
                            text: 'Earned through:'),
                        NormalTextWidget(
                            color: Colors.black,
                            fontSize: 12,
                            text: 'Pang limpyo sa CR'),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 150,
                          child: NormalTextWidget(
                              color: Colors.black,
                              fontSize: 8,
                              text:
                                  'Comment: Padayuna ang pag pang limpyo sa CR'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Image.asset(
                CustomIcons().coinIcon,
                height: 22,
              ),
              const SizedBox(
                width: 10,
              ),
              BoldTextWidget(
                  color: CustomColors().primaryColor,
                  fontSize: 14,
                  text: '+1,000cc'),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
