import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../widgets/banner_widget.dart';
import '../widgets/buttons/dropdown_item_widget.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/header/header_widget.dart';
import '../widgets/product/product_list_widget.dart';
import '../widgets/search_delegate/search_delegate_item_widget.dart';

class RewardHomeScreen extends StatefulWidget {
  const RewardHomeScreen({super.key});

  @override
  State<RewardHomeScreen> createState() => _RewardHomeScreenState();
}

class _RewardHomeScreenState extends State<RewardHomeScreen> {
  int _dropdownValue = 0;

  String itemCategory = 'Snacks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                HeaderWidget(
                  headerTitle: 'HOME',
                ),
                const BannerWidget(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GestureDetector(
                onTap: () {
                  // UserRepository().addUser(
                  //   'Lance Olana',
                  //   0,
                  //   'lance.ceosi@gmail.com',
                  //   '123lance',
                  //   '123lance',
                  //   'Flutter Developer',
                  // );
                  showSearch(
                      context: context, delegate: SearchDelegateProduct());
                },
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.search,
                        color: CustomColors().primaryColor,
                      ),
                      const Expanded(child: SizedBox()),
                      SizedBox(
                        width: 120,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
                          child: DropdownButton(
                            underline: Container(color: Colors.transparent),
                            iconEnabledColor: Colors.black,
                            isExpanded: true,
                            value: _dropdownValue,
                            items: [
                              DropdownMenuItem(
                                onTap: () {
                                  itemCategory = "Snacks";
                                },
                                value: 0,
                                child: DropDownItem(label: 'Snacks'),
                              ),
                              DropdownMenuItem(
                                onTap: () {
                                  itemCategory = "Drinks";
                                },
                                value: 1,
                                child: DropDownItem(label: 'Drinks'),
                              ),
                              DropdownMenuItem(
                                onTap: () {
                                  itemCategory = "Candies";
                                },
                                value: 2,
                                child: DropDownItem(label: 'Candies'),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                _dropdownValue = int.parse(value.toString());
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ProductListWidget(
                query: itemCategory,
              ),
            )
          ],
        ),
      ),
    );
  }
}
