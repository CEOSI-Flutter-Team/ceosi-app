import 'package:ceosi_app/constants/colors.dart';
import 'package:flutter/material.dart';
import '../../constants/icons.dart';
import '../../widgets/button_widget.dart';
import 'widgets/dropdown_button_form_field_widget.dart';
import '../../widgets/sidebar_widget.dart';
import '../../widgets/text_widget.dart';
import 'package:intl/intl.dart';

class UserSearchScreen extends StatefulWidget {
  const UserSearchScreen({super.key});

  @override
  State<UserSearchScreen> createState() => _UserSearchScreenState();
}

class _UserSearchScreenState extends State<UserSearchScreen> {
  final moods = [
    'Enjoyment',
    'Sadness',
    'Anger',
    'Disgust',
    'Fear',
  ];
  DateTimeRange? dateRange;

  String getFrom() {
    if (dateRange == null) {
      return 'From';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange!.start);
    }
  }

  String getUntil() {
    if (dateRange == null) {
      return 'Until';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange!.end);
    }
  }

  Future pickDateRange(BuildContext context) async {
    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDateRange: dateRange,
    );

    if (newDateRange == null) return;

    setState(() => dateRange = newDateRange);
  }

  Object? mood;

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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: ButtonWidget(
                      borderRadius: 20,
                      onPressed: () {
                        pickDateRange(context);
                        print(dateRange);
                      },
                      buttonHeight: 53,
                      buttonWidth: 150,
                      textWidget: SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            NormalTextWidget(
                                color: Colors.white,
                                fontSize: 18,
                                text: dateRange == null
                                    ? 'Date Range'
                                    : '${getFrom().toString()} - ${getUntil().toString()}'),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        CustomIcons().datepickericon),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                DropDownButtonFormFieldWidget(
                    dropdownbackgroundcolor: CustomColors.primary,
                    dropdownIconcolor: Colors.white,
                    dropdownitemcolor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(37, 12, 37, 0),
                    label: '',
                    value: mood,
                    hint: const Center(
                        child: NormalTextWidget(
                            color: Colors.white,
                            fontSize: 20,
                            text: 'Select Mood')),
                    onChanged: (newValue) {
                      setState(() {
                        mood = newValue;
                        print(mood);
                        print(mood.runtimeType);
                      });
                    },
                    items: moods.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        alignment: AlignmentDirectional.center,
                        value: value,
                        child: Center(child: Text(value)),
                      );
                    }).toList()),
                const SizedBox(
                  height: 350,
                ),
                ButtonWidget(
                    borderRadius: 20,
                    onPressed: () {},
                    buttonHeight: 53,
                    buttonWidth: 182,
                    textWidget: const NormalTextWidget(
                        color: Colors.white, fontSize: 18, text: 'Search')),
                const SizedBox(
                  height: 250,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
