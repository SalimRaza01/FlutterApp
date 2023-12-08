import 'package:flutter/material.dart';

class TodaysStatus extends StatelessWidget {
  const TodaysStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      padding: const EdgeInsets.only(left: 10, right: 15),
                      child: Text(
                        'GLUCOMETER',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 38),
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
                      style: TextStyle(color: Colors.black, fontSize: 11),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
