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
    return Container(
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
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
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
            Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
