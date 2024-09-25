import 'dart:async'; // Import for Timer
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Ensure this import is correct

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    // Set up a timer to navigate to home page after a delay
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/home'); // Replace '/home' with your actual route
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF1C2120), // Background color
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo or Image centered
            Image.asset(
              'assets/logo.png', // Ensure this path is correct
              height: 100,
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(), // Optional loading indicator
            const SizedBox(height: 20),
            const Text(
              'Welcome to MyApp', // Optional welcome text
              style: TextStyle(
                fontSize: 24,
                color: Colors.white, // Adjust text color for visibility
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}