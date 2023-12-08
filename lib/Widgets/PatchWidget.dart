import 'package:flutter/material.dart';

class PatchWidget extends StatelessWidget {
  const PatchWidget({super.key});

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
              'INSULIN PATCH',
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
            SizedBox(height: 2),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Container(
                        height: 180,
                        width: 90,
                        child: Image.asset(
                          "assets/images/PatchIcon.png",
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 20, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PATCH CHANGE DATE',
                        style: TextStyle(
                          color: Color.fromARGB(255, 54, 53, 86),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        '03-08-2020',
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
