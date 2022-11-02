import 'package:ceosi_app/lib/widgets/drawer/drawer_widget.dart';
import 'package:ceosi_app/lib/widgets/header/header_admin_panel_widget.dart';
import 'package:ceosi_app/lib/widgets/list_widgets/admin_list_rewards_widget.dart';
import 'package:ceosi_app/lib/widgets/list_widgets/list_users_widget.dart';
import 'package:ceosi_app/lib/widgets/search_delegate/search_bar_widget.dart';
import 'package:ceosi_app/lib/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

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
