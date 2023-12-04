import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'registerScreen.dart';
import '../user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'homeScreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

Future<void> save() async {
  try {
    var res = await http.post(
      Uri.parse("http://localhost:8080/signin"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({'email': user.email, 'password': user.password}),
    );

if (res.statusCode == 200) {
  var jsonResponse = json.decode(res.body);

if (jsonResponse['email'] == user.email && jsonResponse['password'] == user.password) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  } else {
      print("Login failed. Incorrect user information in the server response.");
  }
} else {
  print("Login failed with status code: ${res.statusCode}");
  print(res.body);
}
  } catch (error) {
    print("Error during Login: $error");
  }
}

  User user = User('', '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack( 
        children: [
          // Positioned(
          //   top: 0,
          //   child: SvgPicture.asset(
          //     'assets/images/top.svg',
          //     width: 400,
          //     height: 150,
          //   ),
          // ),
          Container( 
            alignment: Alignment.center,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Text(
                    "Welcome, Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      controller: TextEditingController(text: user.email),
                      style: TextStyle(color: Colors.white),
                      onChanged: (value) {
                        user.email = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Provide Email';
                        } else if (RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                          return null;
                        } else {
                          return 'Enter valid email';
                        }
                      },
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      controller: TextEditingController(text: user.password),
                             style: TextStyle(color: Colors.white),
                      onChanged: (value) {
                        user.password = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Provide Password';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.vpn_key,
                          color: Colors.white,
                        ),
                        hintText: 'Enter Password',
                             hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 30, 16, 0),
                    child: Container(
                      height: 50,
                      width: 200,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            save();
                          } else {
                            print("not ok");
                          }
                        },
                        child: Text(
                          "Signin",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(95, 20, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Not have Account ? ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (context) => RegisterScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Signup",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
