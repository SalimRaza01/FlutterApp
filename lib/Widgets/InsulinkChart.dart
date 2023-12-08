import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  ChartData(this.mobile, this.sale, [this.color]);

  final String mobile;
  final double sale;
  final Color? color;
}

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

class InsulinChart extends StatelessWidget {
  const InsulinChart({super.key});

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
                  ColumnSeries<ChartDataInfoInsulin, String>(
                    dataSource: InsulinIndexChart,
                    pointColorMapper: (ChartDataInfoInsulin data, _) =>
                        data.color,
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
            ),
          ],
        ),
      ),
    );
  }
}
