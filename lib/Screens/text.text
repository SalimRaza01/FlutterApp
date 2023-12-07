// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class ChartData {
  ChartData(this.mobile, this.sale, [this.color]);

  final String mobile;
  final double sale;
  final Color? color;
}

class ChartDataInfo {
  ChartDataInfo(this.year, this.value, [this.color]);

  final String year;
  final double value;
  final Color? color;
}

final List<ChartDataInfo> indexChart = [
  ChartDataInfo('2013', 25.5, Color.fromARGB(255, 174, 19, 239)),
  ChartDataInfo('2014', 87, Color.fromARGB(255, 219, 151, 248)),
  ChartDataInfo('2015', 69, Color.fromARGB(255, 174, 19, 239)),
  ChartDataInfo('2016', 24, Color.fromARGB(255, 219, 151, 248)),
  ChartDataInfo('2017', 84, Color.fromARGB(255, 174, 19, 239)),
  ChartDataInfo('2018', 42, Color.fromARGB(255, 219, 151, 248)),
  ChartDataInfo('2019', 35, Color.fromARGB(255, 174, 19, 239)),
  ChartDataInfo('2020', 52, Color.fromARGB(255, 219, 151, 248)),
  ChartDataInfo('2021', 75, Color.fromARGB(255, 174, 19, 239)),
  ChartDataInfo('2022', 45, Color.fromARGB(255, 219, 151, 248)),
  ChartDataInfo('2023', 65, Color.fromARGB(255, 174, 19, 239)),
  ChartDataInfo('2024', 27, Color.fromARGB(255, 174, 19, 239)),
];

class ChartDataInfoInsulin {
  ChartDataInfoInsulin(this.year, this.value, [this.color]);

  final String year;
  final double value;
  final Color? color;
}

final List<ChartDataInfoInsulin> InsulinIndexChart = [
  ChartDataInfoInsulin('2013', 25.5, Color.fromARGB(255, 0, 152, 61)),
  ChartDataInfoInsulin('2014', 87, Color.fromARGB(255, 0, 226, 56)),
  ChartDataInfoInsulin('2015', 69, Color.fromARGB(255, 0, 152, 61)),
  ChartDataInfoInsulin('2016', 24, Color.fromARGB(255, 0, 226, 56)),
  ChartDataInfoInsulin('2017', 84, Color.fromARGB(255, 0, 152, 61)),
  ChartDataInfoInsulin('2018', 42, Color.fromARGB(255, 0, 226, 56)),
  ChartDataInfoInsulin('2019', 35, Color.fromARGB(255, 0, 152, 61)),
  ChartDataInfoInsulin('2020', 52, Color.fromARGB(255, 0, 226, 56)),
  ChartDataInfoInsulin('2021', 75, Color.fromARGB(255, 0, 152, 61)),
  ChartDataInfoInsulin('2022', 45, Color.fromARGB(255, 0, 226, 56)),
  ChartDataInfoInsulin('2023', 65, Color.fromARGB(255, 0, 152, 61)),
  ChartDataInfoInsulin('2024', 27, Color.fromARGB(255, 0, 152, 61)),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text(
                              'Welcome,',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text(
                              'Salim Raza',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Image.asset(
                        "assets/images/profileImage.png",
                        fit: BoxFit.cover,
                        width: 45,
                        height: 45,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 0),
                  child: Container(
                    height: 210,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(5, 15),
                          color: Color.fromARGB(255, 199, 199, 199),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'TODAYS READING',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'updated 2 hour ago',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    child: CircularProgressIndicator(
                                      value: 0.5,
                                      strokeWidth: 14,
                                      color: Color.fromARGB(255, 76, 76, 76),
                                      backgroundColor: Colors.grey,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    child: CircularProgressIndicator(
                                      value: 0.5,
                                      strokeWidth: 14,
                                      color: Color.fromARGB(255, 0, 226, 56),
                                      backgroundColor: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 70,
                                  child: CircularProgressIndicator(
                                    value: 0.5,
                                    strokeWidth: 14,
                                    color: Color.fromARGB(255, 201, 84, 221),
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 18),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 15),
                                    child: Text(
                                      'GLUCOMETER',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 38),
                                    child: Text(
                                      'INSULIN DOSE',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'CARB TAKE',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 11),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 0),
                  child: Container(
                    height: 210,
                    width: 380,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(5, 15),
                          color: Color.fromARGB(255, 199, 199, 199),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You average insulin intake in lesser than the last week average',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              'This Week',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                top: 10,
                              ),
                              child: Row(
                                children: [
                                  LinearPercentIndicator(
                                    width: 250,
                                    animation: true,
                                    lineHeight: 15.0,
                                    animationDuration: 2000,
                                    percent: 0.4,
                                    barRadius: const Radius.circular(16),
                                    progressColor:
                                        Color.fromARGB(255, 0, 59, 108),
                                    backgroundColor: Colors.grey[300],
                                  ),
                                  Text(
                                    '10',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 59, 108),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'unit/day',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 59, 108),
                                      fontSize: 9,
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              'Previous Week',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                top: 10,
                              ),
                              child: Row(
                                children: [
                                  LinearPercentIndicator(
                                    width: 250,
                                    animation: true,
                                    lineHeight: 15.0,
                                    animationDuration: 2000,
                                    percent: 0.4,
                                    barRadius: const Radius.circular(16),
                                    progressColor:
                                        Color.fromARGB(255, 0, 226, 56),
                                    backgroundColor: Colors.grey[300],
                                  ),
                                  Text(
                                    '120.6',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 59, 108),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    'unit/day',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 59, 108),
                                      fontSize: 9,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 0),
                  child: Container(
                    height: 240,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(5, 15),
                          color: Color.fromARGB(255, 199, 199, 199),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'GLUCOSE',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'AVERAGE',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'updated 2 hours ago',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '13 unit/day',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          GlucoseChart(),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 0),
                  child: Container(
                    height: 240,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(5, 15),
                          color: Color.fromARGB(255, 199, 199, 199),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'INSULIN',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'AVERAGE',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'updated 2 hours ago',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '13 unit/day',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          InsulinChart(),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 0),
                  child: Container(
                    height: 240,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(5, 15),
                          color: Color.fromARGB(255, 199, 199, 199),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'RESSERVOIR',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'updated 2 hours ago',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            offset: Offset(5, 15),
                                            color: Color.fromARGB(
                                                255, 199, 199, 199),
                                            blurRadius: 20,
                                          ),
                                        ],
                                      ),
                                      child: LiquidLinearProgressIndicator(
                                        value: 0.30,
                                        valueColor: AlwaysStoppedAnimation(
                                            Color.fromARGB(255, 54, 53, 86)),
                                        backgroundColor:
                                            Color.fromARGB(255, 238, 238, 238),
                                        borderRadius: 50,
                                        direction: Axis.vertical,
                                        center: Text("30%"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 20, left: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '10 ml',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 54, 53, 86),
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      'out of 50 units',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 54, 53, 86),
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      'RESERVOIR CHANGE DATE',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 54, 53, 86),
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      '03-08-2023',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Color.fromARGB(255, 31, 29, 86),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 31, 29, 86),
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'InsuLink',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home, color: Colors.white),
                  title: Text(
                    'HOME',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.task, color: Colors.white),
                  title: Text(
                    'BOLUS WIZARD',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.trending_up, color: Colors.white),
                  title: Text(
                    'REPORT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.settings, color: Colors.white),
                  title: Text(
                    'SETTINGS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ));
  }
}

Widget InsulinChart() {
  return Container(
    height: 180,
    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
    child: SfCartesianChart(
      primaryXAxis: CategoryAxis(
        labelRotation: 0,
        majorGridLines: MajorGridLines(width: 0),
        labelStyle: TextStyle(fontSize: 8),
      ),
      primaryYAxis: NumericAxis(
        majorGridLines: MajorGridLines(width: 0),
        labelStyle: TextStyle(fontSize: 8),
      ),
      series: <ChartSeries>[
        ColumnSeries<ChartDataInfoInsulin, String>(
          dataSource: InsulinIndexChart,
          pointColorMapper: (ChartDataInfoInsulin data, _) => data.color,
          xValueMapper: (ChartDataInfoInsulin data, _) => data.year,
          yValueMapper: (ChartDataInfoInsulin data, _) => data.value,
          enableTooltip: true,
          dataLabelSettings: DataLabelSettings(
            isVisible: false,
            angle: 0,
          ),
        ),
      ],
    ),
  );
}

Widget GlucoseChart() {
  return Container(
    height: 180,
    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
    child: SfCartesianChart(
      primaryXAxis: CategoryAxis(
        labelRotation: 0,
        majorGridLines: MajorGridLines(width: 0),
        labelStyle: TextStyle(fontSize: 8),
      ),
      primaryYAxis: NumericAxis(
        majorGridLines: MajorGridLines(width: 0),
        labelStyle: TextStyle(fontSize: 8),
      ),
      series: <ChartSeries>[
        ColumnSeries<ChartDataInfo, String>(
          dataSource: indexChart,
          pointColorMapper: (ChartDataInfo data, _) => data.color,
          xValueMapper: (ChartDataInfo data, _) => data.year,
          yValueMapper: (ChartDataInfo data, _) => data.value,
          enableTooltip: true,
          dataLabelSettings: DataLabelSettings(
            isVisible: false,
            angle: 0,
          ),
        ),
      ],
    ),
  );
}
