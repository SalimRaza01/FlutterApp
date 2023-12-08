import 'package:flutter/material.dart';
import 'Screens/RazorPayIntegration.dart';
import 'AuthScreens/SplashScreen.dart';
import 'AuthScreens/SignUp.dart';
import 'AuthScreens/SignIn.dart';
import 'Screens/HomeScreen.dart';

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
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/razorpay": (context) => Home(),
        "/newlogin": (context) => NewLogin(),
        "/signup": (context) => SignUp(),
        "signin": (context) => SignIn(),
      },
    );
  }
}
