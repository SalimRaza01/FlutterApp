import 'package:flutter/material.dart';
import 'Screens/homeScreen.dart';
import 'Screens/loginScreen.dart';
import 'Screens/registerScreen.dart';
import 'Screens/newLogin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        "/": (context) => NewLogin(),
        "/home": (context) => HomeScreen(),
        "/login": (context) => LoginScreen(),
        "/register": (context) => RegisterScreen(),
        "/newlogin": (context) => NewLogin(),
      },
    );
  }
}
