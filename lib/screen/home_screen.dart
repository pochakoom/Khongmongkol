import 'package:flutter/material.dart';
import 'package:khongmongkol/screen/structure.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Structure(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/wallpaper.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            'Welcome to the Home Page',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
      homeIconColor: const Color.fromARGB(255, 0, 0, 0),
    );
  }
}
