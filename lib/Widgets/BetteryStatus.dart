import 'package:flutter/material.dart';

class BetteryStatus extends StatelessWidget {
  const BetteryStatus({super.key});

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
              'BETTERY',
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
                        height: 140,
                        width: 50,
                        child: Image.asset(
                          "assets/images/BetteryIcon.png",
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 60, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '90%',
                        style: TextStyle(
                          color: Color.fromARGB(255, 54, 53, 86),
                          fontSize: 70,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        ' ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 6,
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
