// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
      body: Container(
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
                                padding:
                                    const EdgeInsets.only(left: 10, right: 15),
                                child: Text(
                                  'GLUCOMETER',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 38),
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
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/profileImage.png",
                  width: 60,
                  height: 60,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Notification'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
