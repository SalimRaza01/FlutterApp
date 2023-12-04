import 'package:flutter/material.dart';
import 'Screens/homeScreen.dart';
import 'Screens/loginScreen.dart';
import 'Screens/registerScreen.dart';
import 'Screens/newLogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      // initialRoute: "/home",
      routes: {
        // ignore: prefer_const_constructors
        "/": (context) => NewLogin(),
        // ignore: prefer_const_constructors
        "/home": (context) => HomeScreen(),
        "/login": (context) => LoginScreen(),
        "/register": (context) => RegisterScreen(),
        // "/newlogin": (context) => NewLogin(),
      },
    );
  }
}
