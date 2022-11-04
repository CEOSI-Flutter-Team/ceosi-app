import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/constants/icons.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/widgets/piechart_widget.dart';
import 'package:flutter/material.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/sidebar_widget.dart';
import '../../widgets/text_widget.dart';

class PieChartReportScreen extends StatefulWidget {
  const PieChartReportScreen({super.key});

  @override
  State<PieChartReportScreen> createState() => _PieChartReportScreenState();
}

class _PieChartReportScreenState extends State<PieChartReportScreen> {
  Map<String, double> dataMap = {
    'Enjoyment': 5,
    'Sadness': 3,
    'Anger': 2,
    'Disgust': 1,
    'Fear': 2,
  };

  //specific data category counter algorithm(do not remove yet)
  //   late List<Expense> _expense = [];
  // Map<String, double> getCategoryData() {
  //   Map<String, double> catMap = {};
  //   for (var item in _expense) {
  //     print(item.category);
  //     if (catMap.containsKey(item.category) == false) {
  //       catMap[item.category] = 1;
  //     } else {
  //       catMap.update(item.category, (int) => catMap[item.category]! + 1);
  //       // test[item.category] = test[item.category]! + 1;
  //     }
  //     print(catMap);
  //   }
  //   return catMap;
  // }

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
          PieChartWidget(centerText: 'MOOD', dataMap: dataMap),
          pieChartSceenButtonandText(),
        ]),
      ),
    );
  }

  Padding pieChartSceenButtonandText() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 580),
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
                    text: 'Pie Chart Report Screen'),
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
