import 'package:flutter/material.dart';
import 'package:khongmongkol/screen/home_screen.dart';
import 'package:khongmongkol/screen/structure.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  void bd_kmk() {
    print("Birthday KMK");
  }

  void gaw_wallpaper() {
    print("Give away wallpapers");
  }

  @override
  Widget build(BuildContext context) {
    return Structure(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/wallpaper.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Back Button
                  Row(
                    children: [
                  Container(
                    width: 40,
                    height: 40,
                    color: Color(0xFF8B5F32),
                    child: IconButton(
                      icon: const Icon(
                        Icons.keyboard_arrow_left,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop(); // นำทางกลับ
                      },
                    ),
                  ),
                  
                  const SizedBox(
                      width: 8), // เพิ่มระยะห่างระหว่างไอคอนและข้อความ
                  const Text(
                    'Back',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), // สีข้อความ
                      fontSize: 20,
                    ),
                  ),
                  ],
                  ),
                  const SizedBox(height: 20),

                  // First Button วัตถุมงคล
                  SizedBox(
                    width: 400,
                    height: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF000000),
                            Color(0xFF8B5F32)
                          ], // Gradient colors
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: bd_kmk,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icon_bd.png',
                                    width: 70,
                                    height: 70,
                                  ),
                                  const SizedBox(width: 15),
                                  const Text(
                                    'วัตถุมงคลตามวันเกิด',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const Text(
                                '>',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                            ],
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.all(10),
                          textStyle: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Second Button wallpaper
                  SizedBox(
                    width: 400,
                    height: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF000000),
                            Color(0xFF8B5F32)
                          ], // Gradient colors
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: gaw_wallpaper,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/card.png',
                                    width: 80,
                                    height: 80,
                                  ),
                                  const SizedBox(width: 15),
                                  const Text(
                                    'Give Away Wallpapers',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const Text(
                                '>',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                            ],
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.all(10), // Remove default padding
                          textStyle:
                              const TextStyle(fontSize: 18), // Button text size
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      menuIconColor: const Color.fromARGB(255, 0, 0, 0),
    );
  }
}
