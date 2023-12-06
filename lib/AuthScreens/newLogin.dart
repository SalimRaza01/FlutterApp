// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'SignUp.dart';

class NewLogin extends StatelessWidget {
  const NewLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.grey, Colors.black])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(alignment: Alignment.center, children: [
            Container(
                alignment: Alignment.center,
                child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 300,
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white,
                        ), //Text
                      ), //LoginText
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                        child: Container(
                          height: 50,
                          width: 300,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()),
                              );
                            },
                            child: Text(
                              "Signup for Free",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ), //Text
                          ), //TextButton
                        ), //Container
                      ), //Padding
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                        child: Container(
                          height: 50,
                          width: 300,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              //Row widget
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/glogin.png',
                                  width: 30,
                                  height: 30,
                                  // fit: BoxFit.cover,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Continue with Google",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                          ), // TextButton
                        ), // Container
                      ), // Padding

                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                        child: Container(
                          height: 50,
                          width: 300,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              //Row widget
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/flogin.png',
                                  width: 25,
                                  height: 25,
                                  // fit: BoxFit.cover,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Continue with Facebook",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                          ), //TextButton
                        ), //Container
                      ),
                                            Padding(
                        padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                        child: Container(
                          height: 50,
                          width: 300,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              //Row widget
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/alogin.png',
                                  width: 25,
                                  height: 25,
                                  // fit: BoxFit.cover,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Continue with Apple",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                          ), //TextButton
                        ), //Container
                      ), //Padding
                      SizedBox(
                        height: 30,
                      ),

                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ]))
          ])),
    );
  }
}
