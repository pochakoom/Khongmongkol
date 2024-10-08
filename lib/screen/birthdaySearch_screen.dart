import 'package:flutter/material.dart';
import 'package:khongmongkol/screen/structure.dart';
import 'package:khongmongkol/screen/monday_screen.dart';
import 'package:khongmongkol/screen/tuesday_screen.dart';
import 'package:khongmongkol/screen/wednesday_screen.dart';
import 'package:khongmongkol/screen/thusday_screen.dart';
import 'package:khongmongkol/screen/friday_screen.dart';
import 'package:khongmongkol/screen/saturday_screen.dart';
import 'package:khongmongkol/screen/sunday_screen.dart';

class birthdaySearch extends StatefulWidget {
  const birthdaySearch({super.key});

  @override
  _BirthdaySearchState createState() => _BirthdaySearchState();
}

class _BirthdaySearchState extends State<birthdaySearch> {
  final List<String> days = [
    'วันจันทร์',
    'วันอังคาร',
    'วันพุธ',
    'วันพฤหัสบดี',
    'วันศุกร์',
    'วันเสาร์',
    'วันอาทิตย์'
  ];

  String? selectedDay;

  void showSuccessSnackBar() {
    if (selectedDay == 'วันจันทร์') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("ประมวลผลสำเร็จ"),
          backgroundColor: const Color.fromARGB(255, 0, 146, 78),
          action: SnackBarAction(
            label: 'ดูข้อมูลวันจันทร์',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MondayScreen()), // เปิดหน้าจอ BirthScreen
              );
            },
          ),
        ),
      );
    } else if (selectedDay == 'วันอังคาร') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("ประมวลผลสำเร็จ"),
          backgroundColor: const Color.fromARGB(255, 0, 146, 78),
          action: SnackBarAction(
            label: 'ดูข้อมูลวันอังคาร',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TuesdayScreen()), // เปิดหน้าจอ BirthScreen
              );
            },
          ),
        ),
      );
    } else if (selectedDay == 'วันพุธ') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("ประมวลผลสำเร็จ"),
          backgroundColor: const Color.fromARGB(255, 0, 146, 78),
          action: SnackBarAction(
            label: 'ดูข้อมูลวันพุธ',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WednesdayScreen()), // เปิดหน้าจอ BirthScreen
              );
            },
          ),
        ),
      );
    } else if (selectedDay == 'วันพฤหัสบดี') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("ประมวลผลสำเร็จ"),
          backgroundColor: const Color.fromARGB(255, 0, 146, 78),
          action: SnackBarAction(
            label: 'ดูข้อมูลวันพฤหัสบดี',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ThusdayScreen()), // เปิดหน้าจอ BirthScreen
              );
            },
          ),
        ),
      );
    } else if (selectedDay == 'วันศุกร์') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("ประมวลผลสำเร็จ"),
          backgroundColor: const Color.fromARGB(255, 0, 146, 78),
          action: SnackBarAction(
            label: 'ดูข้อมูลวันศุกร์',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FridayScreen()), // เปิดหน้าจอ BirthScreen
              );
            },
          ),
        ),
      );
    } else if (selectedDay == 'วันเสาร์') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("ประมวลผลสำเร็จ"),
          backgroundColor: const Color.fromARGB(255, 0, 146, 78),
          action: SnackBarAction(
            label: 'ดูข้อมูลวันเสาร์',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SaturdayScreen()), // เปิดหน้าจอ BirthScreen
              );
            },
          ),
        ),
      );
    } else if (selectedDay == 'วันอาทิตย์') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("ประมวลผลสำเร็จ"),
          backgroundColor: const Color.fromARGB(255, 0, 146, 78),
          action: SnackBarAction(
            label: 'ดูข้อมูลวันอาทิตย์',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SundayScreen()), // เปิดหน้าจอ BirthScreen
              );
            },
          ),
        ),
      );
    }
  }

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DropdownButtonFormField<String>(
                hint: const Text(
                  'เลือกวันเกิดของท่าน',
                  style: TextStyle(color: Colors.white),
                ),
                value: selectedDay,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[800], // Dark background for dropdown
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20.0, // เพิ่มความสูงของช่อง
                    horizontal: 16.0, // เพิ่มความกว้างด้านข้าง
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                dropdownColor: Colors.grey[900], // Dropdown menu color
                items: days.map((day) {
                  return DropdownMenuItem(
                    value: day,
                    child: Text(
                      day,
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedDay = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedDay = null; // Reset selection
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 30.0,
                      ), // เพิ่ม padding ให้ปุ่มใหญ่ขึ้น
                      backgroundColor: Colors.grey,
                    ),
                    child: const Text(
                      'cancel',
                      style: TextStyle(
                        fontSize: 18, // เพิ่มขนาดฟอนต์
                        color: Colors.black, // เปลี่ยนสีฟอนต์
                      ),
                    ),
                  ),

                  //ปุ่ม SEND
                  ElevatedButton(
                    onPressed: () {
                      if (selectedDay != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('กำลังประมวลผล...'),
                            duration: const Duration(seconds: 2),
                          ),
                        );
                        // Logic for processing or navigating
                        showSuccessSnackBar();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 30.0,
                      ), // เพิ่ม padding ให้ปุ่มใหญ่ขึ้น
                      backgroundColor: Colors.amber,
                    ),
                    child: const Text(
                      'send',
                      style: TextStyle(
                        fontSize: 18, // เพิ่มขนาดฟอนต์
                        color: Colors.black, // เปลี่ยนสีฟอนต์
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      menuIconColor: const Color.fromARGB(255, 0, 0, 0),
    );
  }
}
