import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/widgets/freedomwallbutton_widget.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/widgets/masonry_list_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/sidebar_widget.dart';

class FreedomPostsScreen extends StatefulWidget {
  const FreedomPostsScreen({super.key});

  @override
  State<FreedomPostsScreen> createState() => _FreedomPostsScreenState();
}

class _FreedomPostsScreenState extends State<FreedomPostsScreen>
    with TickerProviderStateMixin {
  TabController? tabController;

  
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        drawer: const SidebarWidget(),
        appBar: AppBar(
          backgroundColor: CustomColors.primary,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20.0),
              child: SizedBox(
                width: size.width,
                child: Center(
                  child: TabBar(
                    isScrollable: true,
                    labelColor: Colors.white,
                    indicatorColor: const Color.fromRGBO(8, 120, 93, 3),
                    unselectedLabelColor: Colors.grey,
                    controller: tabController,
                    tabs: const [
                      Text('FREEDOM WALL \u{1F4DC}'),
                      Text('MY FREEDOM POSTS \u{1F4C4}'),
                    ],
                  ),
                ),
              )),
        ),
        body: TabBarView(controller: tabController, children: [
          Stack(children: const [
            MasonryListWidget(),
            FreedomWallButtonWidget(theHeader: '                '),
          ]),
          Stack(children: const [
            MasonryListWidget(),
            FreedomWallButtonWidget(theHeader: '                '),
          ]),
        ]),
      ),
    );
  }
}
