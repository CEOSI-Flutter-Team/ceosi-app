import 'dart:math';

import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/widgets/gesture_detector_widget.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/widgets/masontry_text_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../constants/icons.dart';

class MasonryListWidget extends StatefulWidget {
  const MasonryListWidget({required this.stream, super.key});

  final Stream<QuerySnapshot<Object?>>? stream;
  @override
  State<MasonryListWidget> createState() => _MasonryListWidgetState();
}

class _MasonryListWidgetState extends State<MasonryListWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: widget.stream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.docs.isEmpty) {
            return const Center(
              child: Text(
                'You have no saved Posts!',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            );
          }
          return Container(
            margin: const EdgeInsets.fromLTRB(20, 100, 20, 12),
            child: MasonryGridView.builder(
              physics: const BouncingScrollPhysics(),
              crossAxisSpacing: 8,
              mainAxisSpacing: 6,
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                Map data = snapshot.data!.docs[index].data() as Map;
                DateTime mydateTime = data['created'].toDate();
                String formattedTime =
                    DateFormat.yMMMd().add_jm().format(mydateTime);

                Random random = Random();
                int randomNumber = random.nextInt(8) + 1;
                Color backgroudColor =
                    CustomColors().masonryListbackgroundColors[(randomNumber)];

                return MasonryItem(
                  backgroudColor: backgroudColor,
                  content: data['content'],
                  anonname: data['anon_name'],
                  date: formattedTime,
                );
              },
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
            ),
          );
        } else {
          return const Center(
            child: Text('Loading...'),
          );
        }
      },
    );
  }
}

class MasonryItem extends StatelessWidget {
  MasonryItem(
      {Key? key,
      required this.backgroudColor,
      required this.content,
      this.id,
      required this.date,
      required this.anonname})
      : super(key: key);

  final Color backgroudColor;
  final String content;
  final String? id;
  final String date;
  final String anonname;

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
                              MasonryTextWidget(
                                text: date,
                                presetFontSizes: const [12],
                                textAlign: TextAlign.right,
                              ),
                              MasonryTextWidget(
                                text: 'by: $anonname',
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
