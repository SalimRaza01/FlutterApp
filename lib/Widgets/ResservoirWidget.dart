import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class RessorvoirWidget extends StatelessWidget {
  const RessorvoirWidget({super.key});

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
                              color: Color.fromARGB(255, 199, 199, 199),
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: LiquidLinearProgressIndicator(
                          value: 0.30,
                          valueColor: AlwaysStoppedAnimation(
                              Color.fromARGB(255, 54, 53, 86)),
                          backgroundColor: Color.fromARGB(255, 238, 238, 238),
                          borderRadius: 50,
                          direction: Axis.vertical,
                          center: Text("30%"),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 40),
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
    );
  }
}
