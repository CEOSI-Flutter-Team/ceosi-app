import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/ceosi_freedomwall/model.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/sidebar_widget.dart';
import '../../widgets/text_widget.dart';

class AdminPostsDataScreen extends StatefulWidget {
  const AdminPostsDataScreen({super.key});

  @override
  State<AdminPostsDataScreen> createState() => _AdminPostsDataScreenState();
}

class _AdminPostsDataScreenState extends State<AdminPostsDataScreen> {
  List<Usermodel> userlist = [
    Usermodel(
        fp_id: 1,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Enjoyment'),
    Usermodel(
        fp_id: 2,
        email: 'sancheja2@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 3,
        email: 'sancheja3@gmail.com',
        date: DateTime.now(),
        mood: 'Anger'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Sadness'),
    Usermodel(
        fp_id: 4,
        email: 'sancheja1@gmail.com',
        date: DateTime.now(),
        mood: 'Enjoyment'),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        drawer: const SidebarWidget(),
        appBar: AppBar(
          backgroundColor: CustomColors.primary,
        ),
        body: Stack(children: [
          Center(
              child: Column(
            children: const [
              SizedBox(
                height: 25,
              ),
              BoldTextWidget(
                  color: Colors.black, fontSize: 30, text: 'ADMIN PANEL'),
            ],
          )),
          SingleChildScrollView(child: adminPanelButtons()),
          const ListViewSeparatedHeader(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 250, 10, 20),
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: userlist.length,
              itemBuilder: ((context, index) {
                return ListViewSeparatedItem(
                  userlist: userlist,
                  index: index,
                  fp_id: userlist[index].fp_id,
                  email: userlist[index].email,
                  date: userlist[index].date,
                  mood: userlist[index].mood,
                );
              }),
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            ),
          )
        ]),
      ),
    );
  }

  Padding adminPanelButtons() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const BoldTextWidget(
                    color: Colors.black, fontSize: 20, text: 'DATA'),
                ButtonWidget(
                    borderRadius: 20,
                    onPressed: () {},
                    buttonHeight: 70,
                    buttonWidth: 70,
                    textWidget: Image.asset(CustomIcons().freedompostsicon,
                        fit: BoxFit.contain)),
                ButtonWidget(
                    borderRadius: 20,
                    onPressed: () {},
                    buttonHeight: 70,
                    buttonWidth: 70,
                    textWidget: Image.asset(
                      CustomIcons().piecharticon,
                      fit: BoxFit.contain,
                    )),
                ButtonWidget(
                    borderRadius: 20,
                    onPressed: () {},
                    buttonHeight: 70,
                    buttonWidth: 70,
                    textWidget: Image.asset(CustomIcons().filtericon,
                        fit: BoxFit.contain)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ListViewSeparatedHeader extends StatelessWidget {
  const ListViewSeparatedHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 220, 20, 0),
      child: Container(
        color: CustomColors.primary,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              BoldTextWidget(
                color: Colors.white,
                fontSize: 13,
                text: 'FP ID',
              ),
              SizedBox(
                width: 10,
              ),
              BoldTextWidget(
                color: Colors.white,
                fontSize: 13,
                text: 'Email',
              ),
              SizedBox(
                width: 10,
              ),
              BoldTextWidget(
                color: Colors.white,
                fontSize: 13,
                text: 'Date ',
              ),
              SizedBox(
                width: 20,
              ),
              BoldTextWidget(
                color: Colors.white,
                fontSize: 13,
                text: 'Mood',
              )
            ]),
      ),
    );
  }
}

class ListViewSeparatedItem extends StatelessWidget {
  const ListViewSeparatedItem({
    Key? key,
    required this.userlist,
    required this.fp_id,
    required this.email,
    required this.date,
    required this.mood,
    required this.index,
  }) : super(key: key);

  final List<Usermodel> userlist;
  final int index;
  final int fp_id;
  final String email;
  final DateTime date;
  final String mood;
  final bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: NormalTextWidget(
            textAlign: TextAlign.center,
            color: Colors.black,
            fontSize: 14,
            text: userlist[index].fp_id.toString(),
          ),
        ),
        Expanded(
          child: NormalTextWidget(
            color: Colors.black,
            fontSize: 14,
            text: isObscure == true
                ? userlist[index].email.replaceAll(RegExp(r'.'), '\u{3030}')
                : userlist[index].email,
          ),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: NormalTextWidget(
              color: Colors.black,
              fontSize: 14,
              text: DateFormat('MM/dd/yyyy').format(userlist[index].date),
            ),
          ),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: NormalTextWidget(
              color: Colors.black,
              fontSize: 14,
              text: userlist[index].mood,
            ),
          ),
        ),
      ],
    );
  }
}
