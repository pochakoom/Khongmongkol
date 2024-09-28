import 'package:flutter/material.dart';
import 'package:khongmongkol/screen/structure.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
            'Welcome to the Search Page',
            style: TextStyle(
              color: Colors.white, 
              fontSize: 24,
            ),
          ),
        ),
      ),
      searchIconColor: const Color.fromARGB(255, 0, 0, 0), 
    );
  }
}