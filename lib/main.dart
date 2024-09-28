import 'package:flutter/material.dart';
import 'package:khongmongkol/screen/home_screen.dart';
import 'package:khongmongkol/welcome_page.dart';
import 'screen/menu_screen.dart';
import 'screen/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: const WelcomePage(),
      initialRoute: "/",
      routes: {
        "/":(context) => const WelcomePage(),
        "/menu" : (context) => const MenuScreen(),
        "/home" : (context) => const HomeScreen(),
        "/search" :(context) => const SearchScreen(),
        },
    );
  }
}
