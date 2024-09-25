import 'package:flutter/material.dart';
import 'package:khongmongkol/screen/home_screen.dart';
import 'package:khongmongkol/welcome_page.dart';
import 'screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomePage(),
      initialRoute: "/register",
      routes: {
        "/":(context) => const WelcomePage(),
        "/login" : (context) => const LoginScreen(),
        "/home" : (context) => const RegisterScreen(),
        },
    );
  }
}
