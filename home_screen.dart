import 'package:flutter/material.dart';
import 'package:khongmongkol/screen/login_screen.dart';  // Make sure this import points to the correct file

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _age = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

  bool registering = false;
  String name = '';
  String age = '';
  String email = '';
  String password = '';


  void register() {
    Future.delayed(const Duration(seconds: 2), () {
      if (_formKey.currentState?.validate() ?? false) {
        setState(() {
          registering = true;
          name = _name.text;
          age = _age.text;
          email = _email.text;
          password = _password.text;
        });
      }
    });
  }

  void resetInput() {
    _name.clear();
    _age.clear();
    _email.clear();
    _password.clear();
    _confirmPassword.clear();
  }

  // Define the login navigation method
  void login() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('KhongMongKol')),
        backgroundColor: const Color(0xFFC5A43F),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/wallpaper.png'), // Replace with your image path
            fit: BoxFit.cover, // Makes the image cover the entire container
          ),
        ),
        child: const Center(
          child: Text(
            'Home Page',
            style: TextStyle(
              color: Color.fromARGB(255, 14, 10, 10), // Adjust text color for better visibility
              fontSize: 24,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFC5A43F), // Set the background color
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // Evenly space the buttons
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.white, // Change icon color
              onPressed: () {
                // Action for menu button
                print("Menu button pressed");
              },
            ),
            IconButton(
              icon: const Icon(Icons.home),
              color: Colors.white, // Change icon color
              onPressed: () {
                // Action for home button
                print("Home button pressed");
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.white, // Change icon color
              onPressed: () {
                // Action for search button
                print("Search button pressed");
              },
            ),
          ],
        ),
      ),
    );
  }
}
