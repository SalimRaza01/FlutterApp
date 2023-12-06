// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newproject/AuthScreens/SignUp.dart';
import 'package:newproject/Screens/homeScreen.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.grey, Colors.white])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(alignment: Alignment.center, children: [
            Container(
                alignment: Alignment.center,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        "Sign In to InsuLink",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: const Color.fromARGB(255, 0, 59, 108),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            // filled: true,
                            // fillColor: Colors.white,
                            icon: Icon(
                              Icons.email,
                              color: Color.fromARGB(255, 0, 59, 108),
                            ),
                            hintText: 'Enter your email',
                            hintStyle: TextStyle(color: Colors.white),
                            // enabledBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(16),
                            //   borderSide: BorderSide(color: Colors.white),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(16),
                            //   borderSide: BorderSide(color: Colors.white),
                            // ),
                            // errorBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(16),
                            //   borderSide: BorderSide(color: Colors.red),
                            // ),
                            // focusedErrorBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(16),
                            //   borderSide: BorderSide(color: Colors.red),
                            // ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 0, 59, 108),
                            ),
                            hintText: 'Enter your passowrd',
                            hintStyle: TextStyle(color: Colors.white),
                            // enabledBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(16),
                            //   borderSide: BorderSide(color: Colors.white),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(16),
                            //   borderSide: BorderSide(color: Colors.white),
                            // ),
                            // errorBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(16),
                            //   borderSide: BorderSide(color: Colors.red),
                            // ),
                            // focusedErrorBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(16),
                            //   borderSide: BorderSide(color: Colors.red),
                            // ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(250, 20, 0, 0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignIn(),
                                  ),
                                );
                              },
                              child: Text(
                                "Forget Password ?",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 59, 108),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 340,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 22, 0),
                        child: Container(
                          height: 45,
                          width: 150,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 0, 59, 108),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(200),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Sign In",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(80, 20, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              "Don't have an account !",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                               fontSize: 14),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUp(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 59, 108),
                                  fontWeight: FontWeight.bold,
                                fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]))
          ])),
    );
  }
}
