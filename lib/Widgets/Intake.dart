import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class Intake extends StatelessWidget {
  const Intake({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      progressColor: Color.fromARGB(255, 0, 59, 108),
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
                      progressColor: Color.fromARGB(255, 0, 226, 56),
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
    );
  }
}
