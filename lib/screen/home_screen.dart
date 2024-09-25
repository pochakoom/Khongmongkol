import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0), // Set the desired height of the AppBar
        child: AppBar(
          backgroundColor: const Color(0xFFC5A43F), // Make the AppBar background transparent
          flexibleSpace: Image.asset(
            'assets/heading.png', // Use the correct image asset path
            fit: BoxFit.cover, // Makes the image cover the entire AppBar
          ),
          centerTitle: true, // Center the title
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/wallpaper.png'), // Image for the body
            fit: BoxFit.cover, // Makes the image cover the entire container
          ),
        ),
        child: const Center(
          child: Text(
            'Home Page',
            style: TextStyle(
              color: Colors.white, // Text color for visibility
              fontSize: 24,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFC5A43F), // Set the background color for BottomAppBar
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // Evenly space the buttons
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              iconSize: 30,
              color: Colors.white, // Change icon color
              onPressed: () {
                print("Menu button pressed");
              },
            ),
            IconButton(
              icon: const Icon(Icons.home),
              iconSize: 30,
              color: Colors.white, // Change icon color
              onPressed: () {
                print("Home button pressed");
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              iconSize: 30,
              color: Colors.white, // Change icon color
              onPressed: () {
                print("Search button pressed");
              },
            ),
          ],
        ),
      ),
    );
  }
}
