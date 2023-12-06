import 'package:flutter/material.dart';
import 'Screens/homeScreen.dart';
import 'AuthScreens/newLogin.dart';
import 'AuthScreens/EmailSignup.dart';
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
        "/": (context) => NewLogin(),
        "/home": (context) => HomeScreen(),
        "/signupwithemail": (context) => EmailSignUp(),
      },
    );
  }
}
