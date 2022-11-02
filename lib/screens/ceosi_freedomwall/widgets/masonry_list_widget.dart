import 'dart:math';

import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/constants/icons.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/widgets/masontry_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'gesture_detector_widget.dart';

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
      'Lorem ipsum dol ',
      'Lorem ipsum dolor Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',
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
  const MasonryItem(
      {Key? key,
      required this.backgroudColor,
      required this.content,
      required this.id})
      : super(key: key);

  final Color backgroudColor;
  final String content;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
              color: backgroudColor,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MasonryTextWidget(
                      text: content,
                      fontSize: 20,
                      textAlign: TextAlign.center,
                    ),
                    const MasonryTextWidget(
                      text: '12-21-22',
                      fontSize: 12,
                      textAlign: TextAlign.right,
                    ),
                    MasonryTextWidget(
                      text: 'FP ID #$id',
                      fontSize: 12,
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(140, 10, 0, 0),
        child: GestureDetectorWidget(
          childWidget: Image.asset(CustomIcons().continuousdoticon),
          onTap: () {
            print('hello id $id');
          },
        ),
      )
    ]);
  }
}
