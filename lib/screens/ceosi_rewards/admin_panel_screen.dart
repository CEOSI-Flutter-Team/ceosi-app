import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';
import 'widgets/dialogs/add_coin_dialog_widget.dart';
import 'widgets/dialogs/add_item_dialog_widget.dart';
import 'widgets/dialogs/subtract_coin_dialog_widget.dart';
import 'widgets/drawer_widget.dart';
import 'widgets/header/header_admin_panel_widget.dart';
import 'widgets/product/product_list_widget.dart';
import 'widgets/search_bar_widget.dart';

class AdminPanelScreen extends StatefulWidget {
  const AdminPanelScreen({super.key});

  @override
  State<AdminPanelScreen> createState() => _AdminPanelScreenState();
}

class _AdminPanelScreenState extends State<AdminPanelScreen> {
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
            const HeaderAdminPanelWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ChoiceChip(
                    avatar: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.groups_sharp,
                        color: Colors.white,
                      ),
                    ),
                    onSelected: ((value) {
                      setState(() {
                        _index = true;
                        _index1 = false;
                        _currentIndex = 0;
                      });
                    }),
                    selectedColor: CustomColors().primaryColor,
                    label: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: NormalTextWidget(
                          color: Colors.white, fontSize: 12, text: 'USERS'),
                    ),
                    selected: _index),
                ChoiceChip(
                    avatar: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.card_giftcard_rounded,
                        color: Colors.white,
                      ),
                    ),
                    selectedColor: CustomColors().primaryColor,
                    onSelected: ((value) {
                      setState(() {
                        _index1 = true;
                        _index = false;
                        _currentIndex = 1;
                      });
                    }),
                    label: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: NormalTextWidget(
                          color: Colors.white, fontSize: 12, text: 'REWARDS'),
                    ),
                    selected: _index1)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            _currentIndex == 0
                ? const SearchUserWidget()
                : const SearchItemWidget(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SizedBox(
                child: IndexedStack(
                  index: _currentIndex,
                  children: [
                    const ListUsersWidget(),
                    AdminListReward(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListUsersWidget extends StatelessWidget {
  const ListUsersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ((context, index) {
      return const UsersWidget();
    }));
  }
}

class UsersWidget extends StatelessWidget {
  const UsersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              CustomImages().sampleProfileImage,
              height: 60,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                BoldTextWidget(
                    color: Colors.black, fontSize: 14, text: 'Lance Olana'),
                NormalTextWidget(
                    color: Colors.black,
                    fontSize: 10,
                    text: 'Flutter Developer'),
              ],
            ),
            const Expanded(child: SizedBox()),
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SubtractCoinDialogWidget();
                      });
                },
                icon: Icon(
                  Icons.remove,
                  color: CustomColors().primaryColor,
                )),
            BoldTextWidget(
                color: CustomColors().primaryColor,
                fontSize: 18,
                text: '1,000cc'),
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AddCoinDialogWidget();
                      });
                },
                icon: Icon(
                  Icons.add,
                  color: CustomColors().primaryColor,
                )),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class AdminListReward extends StatelessWidget {
  AdminListReward({super.key});

  final _itemNameController = TextEditingController();
  final _pointsEqualController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProductListWidget(
          query: 'Snacks',
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ButtonWidget(
                borderRadius: 100,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: ((context) {
                        return AddItemDialogWidget(
                          itemNameController: _itemNameController,
                          pointsEqualController: _pointsEqualController,
                        );
                      }));
                },
                buttonHeight: 50,
                buttonWidth: 300,
                textWidget: const BoldTextWidget(
                    color: Colors.white, fontSize: 18, text: 'ADD ITEM'),
                color: CustomColors().primaryColor),
          ),
        ),
      ],
    );
  }
}
