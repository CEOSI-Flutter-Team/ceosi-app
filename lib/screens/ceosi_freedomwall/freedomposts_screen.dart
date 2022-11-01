import 'dart:math';

import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/widgets/gesture_detector_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';

class FreedomPostsScreen extends StatefulWidget {
  const FreedomPostsScreen({super.key});

  @override
  State<FreedomPostsScreen> createState() => _FreedomPostsScreenState();
}

class _FreedomPostsScreenState extends State<FreedomPostsScreen> {
  List<Color> myColors = [
    const Color.fromARGB(255, 159, 147, 46),
    const Color.fromARGB(255, 175, 75, 75),
    const Color.fromARGB(255, 40, 116, 43),
    const Color.fromARGB(255, 81, 59, 122),
    const Color.fromARGB(255, 88, 49, 95),
    const Color.fromARGB(255, 75, 139, 147),
    const Color.fromARGB(255, 51, 114, 108),
    const Color.fromARGB(255, 49, 113, 98),
    const Color.fromARGB(255, 121, 59, 80),
    const Color.fromARGB(255, 46, 101, 152),
  ];

  List<String> myNoteContent = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ',
    'Lorem ipsum dolor sit amet, consectetur ad',
    'Lorem ipsum dol ',
    'Lorem ipsum dolor Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et ',
    'Lorem ipsum dolor sit amet, consectetur ',
    'Lorem ipsum dolor sit amet,',
    'Lorem ipsum Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et ',
    'Lorem ipsum dol Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',
    'Lorem ipsum dolor sit Lorem'
  ];

  List<String> myTitles = [
    ' et dolore ',
    'dolore',
    'Lorem  ',
    ' ipsum ',
    'Lorem ',
    ' consectetur ',
    'sit amet,',
    ' amet ',
    'dol',
    'Lorem dolor sit',
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          leading: Builder(
              builder: (context) => IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )),
        ),
        body: Stack(children: [
          Container(
              margin: const EdgeInsets.fromLTRB(20, 100, 20, 12),
              child: masonryLayout(context)),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const BoldTextWidget(
                          color: Colors.black,
                          fontSize: 20,
                          text: 'Freedom Posts'),
                      ButtonWidget(
                          borderRadius: 20,
                          onPressed: () {},
                          buttonHeight: 70,
                          buttonWidth: 60,
                          textWidget: Image.asset('assets/icons/piechart.png',
                              fit: BoxFit.contain)),
                      ButtonWidget(
                          borderRadius: 20,
                          onPressed: () {},
                          buttonHeight: 70,
                          buttonWidth: 70,
                          textWidget: Image.asset('assets/icons/filter.png',
                              fit: BoxFit.contain)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(256, 520, 12, 0),
                    child: ButtonWidget(
                        borderRadius: 100,
                        onPressed: () {},
                        buttonHeight: 70,
                        buttonWidth: 70,
                        textWidget: Image.asset('assets/icons/plus.png',
                            fit: BoxFit.contain)),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget masonryLayout(BuildContext context) {
    return MasonryGridView.builder(
      crossAxisSpacing: 8,
      mainAxisSpacing: 6,
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        Random random = Random();
        int randomNumber = random.nextInt(8) + 1;
        Color bg = myColors[(randomNumber)];
        String content = myNoteContent[(randomNumber)];
        String title = myTitles[(randomNumber)];
        return Container(
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              padding: const EdgeInsets.fromLTRB(5, 30, 5, 5),
              child: Stack(children: [
                InkWell(
                  onTap: () {},
                  child: Card(
                    color: bg,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            content,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontFamily: "lato",
                              color: Colors.black87,
                            ),
                          ),
                          const Text(
                            '12-21-22',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 12.0,
                              fontFamily: "lato",
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            "FP ID# $index ",
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              fontSize: 13.0,
                              fontFamily: "lato",
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(130, 10, 0, 0),
              child: GestureDetectorWidget(
                childWidget: Image.asset('assets/icons/continuousdot.png',
                    fit: BoxFit.contain),
                onTap: () {
                  print('hello id $index');
                },
              ),
            )
          ]),
        );
      },
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
    );
  }
}
