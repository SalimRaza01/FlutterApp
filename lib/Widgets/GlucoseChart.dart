
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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

class GlucoseChart extends StatelessWidget {
  const GlucoseChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}