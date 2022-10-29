import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/widgets/text_widget.dart';

import 'package:flutter/material.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greyAccent,
        leading: Builder(
            builder: (context) => IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              const BoldTextWidget(
                  color: Colors.black, fontSize: 23, text: "The Team"),
              PopupMenuButton(
                  padding: const EdgeInsets.only(left: 200),
                  icon: const Icon(Icons.filter_list, color: Colors.black),
                  itemBuilder: (ctx) => [
                        PopupMenuItem(
                          onTap: () {},
                          child: const Text('Department'),
                        ),
                        PopupMenuItem(
                          onTap: () {},
                          child: const Text('Job Title'),
                        ),
                        PopupMenuItem(
                          onTap: () {},
                          child: const Text('Birth Date'),
                        )
                      ]),
            ]),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: const Icon(
                    Icons.search,
                    color: primaryColor,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: primaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: primaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(children: [
                    InkWell(
                      onTap: (() {}),
                      child: Stack(
                        children: [
                          Card(
                              color: primaryColor,
                              elevation: 3.0,
                              margin: const EdgeInsets.only(left: 45.0),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 30),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          BoldTextWidget(
                                              color: Colors.white,
                                              fontSize: 14,
                                              text:
                                                  "Finina Chloie O. Biscocho"),
                                          SizedBox(height: 5),
                                          NormalTextWidget(
                                              color: Colors.white,
                                              fontSize: 12,
                                              text:
                                                  "Flutter Developer Trainee"),
                                          SizedBox(height: 5),
                                          NormalTextWidget(
                                              color: Colors.white,
                                              fontSize: 12,
                                              text: "finina.ceosi@gmail.com"),
                                          SizedBox(height: 5),
                                          NormalTextWidget(
                                              color: Colors.white,
                                              fontSize: 12,
                                              text: "March 17,1999")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          const Padding(
                            padding: EdgeInsets.only(top: 12),
                            child: CircleAvatar(
                              backgroundColor: secondaryColor,
                              radius: 45,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ]);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: secondaryColor,
        onPressed: () {
          Navigator.pushNamed(context, '/addteamscreen');
        },
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
