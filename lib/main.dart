import 'package:flutter/material.dart';
import 'Screens/homeScreen.dart';
import 'AuthScreens/newLogin.dart';
import 'AuthScreens/SignUp.dart';
import 'AuthScreens/SignIn.dart';

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
      initialRoute: "/home",
      routes: {
        "/": (context) => SignIn(),
        "/newlogin": (context) => NewLogin(),
        "/home": (context) => HomeScreen(),
        "/signup": (context) => SignUp(),
        // "/signin": (context) => SignIn(),
      },
    );
  }
}
