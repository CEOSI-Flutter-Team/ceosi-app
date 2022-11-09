import 'dart:math';

import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/widgets/gesture_detector_widget.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/widgets/masontry_text_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/icons.dart';
import '../../../utils/datagetter.dart';

class MasonryListWidget extends StatefulWidget {
  const MasonryListWidget({super.key});

  @override
  State<MasonryListWidget> createState() => _MasonryListWidgetState();
}

class _MasonryListWidgetState extends State<MasonryListWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> myNoteContent = [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ',
      'Lorem ipsum dolor sit amet, consectetur ad',
      'Hi ',
      'Hi ',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et ',
      'Lorem ipsum dolor sit amet, consectetur ',
      'Lorem ipsum dolor sit amet',
      'Lorem ipsum Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et ',
      'Lorem ipsum dol Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',
      'Lorem ipsum dolor sit Lorem'
    ];

    return Container(
      margin: const EdgeInsets.fromLTRB(20, 100, 20, 12),
      child: MasonryGridView.builder(
        physics: const BouncingScrollPhysics(),
        crossAxisSpacing: 8,
        mainAxisSpacing: 6,
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          Random random = Random();
          int randomNumber = random.nextInt(8) + 1;
          Color backgroudColor =
              CustomColors().masonryListbackgroundColors[(randomNumber)];
          String content = myNoteContent[(randomNumber)];
          return MasonryItem(
            backgroudColor: backgroudColor,
            content: content,
            id: index,
          );
        },
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
      ),
    );
  }
}

class MasonryItem extends StatelessWidget {
  MasonryItem(
      {Key? key,
      required this.backgroudColor,
      required this.content,
      required this.id})
      : super(key: key);

  final Color backgroudColor;
  final String content;
  final int id;

  final List<TextStyle> tempFontLists = [
    GoogleFonts.justAnotherHand(fontSize: 20),
    GoogleFonts.cedarvilleCursive(fontSize: 20),
    GoogleFonts.fasterOne(fontSize: 20),
    GoogleFonts.bangers(fontSize: 20),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Stack(children: [
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                padding: const EdgeInsets.fromLTRB(5, 30, 5, 5),
                child: Stack(children: [
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: 300,
                      child: Card(
                        color: backgroudColor,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MasonryTextWidget(
                                text: content,
                                presetFontSizes: const [20, 14],
                                style: tempFontLists[Random().nextInt(4)],
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const MasonryTextWidget(
                                text: '12-21-22',
                                presetFontSizes: [12],
                                textAlign: TextAlign.right,
                              ),
                              MasonryTextWidget(
                                text: 'FP ID #$id',
                                presetFontSizes: const [12],
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 11, 0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  GestureDetectorWidget(
                    childWidget: Image.asset(CustomIcons().continuousdoticon),
                    onTap: () {
                      getPosts();
                      print('hello id $id');
                    },
                  ),
                ]),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
