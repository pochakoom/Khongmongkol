import 'package:flutter/material.dart';
import 'package:khongmongkol/screen/home_screen.dart';
import 'package:khongmongkol/screen/structure.dart';

class ThusdayScreen extends StatelessWidget {
  const ThusdayScreen({super.key});

  // สร้างฟังก์ชันสำหรับปุ่มวัตถุมงคล
  void flowerMon() {
    // ทำงานบางอย่างเมื่อปุ่มถูกกด
    print("ดอกไม้มงคลตามวันเกิด button pressed");
  }

  void jewelMon() {
    // ทำงานบางอย่างเมื่อปุ่มถูกกด
    print("อัญมณีมงคล button pressed");
  }

  void khongMon() {
    // ทำงานบางอย่างเมื่อปุ่มถูกกด
    print("วัตถุมงคลตามวันเกิด button pressed");
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
          child: SingleChildScrollView( // เพิ่ม SingleChildScrollView เพื่อให้ Scroll ได้
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // หัวข้อใหญ่
                const Text(
                  'วันพฤหัสบดี',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                // Subtitle
                const Text(
                  'THUSDAY',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                // รูปภาพหลัก
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/thu.png'), // ใช้รูปภาพจาก assets
                      fit: BoxFit.cover, // ปรับขนาดรูปภาพให้พอดีกับ container
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.all(16.0), // สามารถปรับเปลี่ยนขนาดของ padding ได้
                  child: Text(
                  'ตำนานโหราศาสตร์ กล่าวไว้ว่า พระพฤหัสบดีเป็นเทพยดาอัฐเคราะห์ ที่พระอิศวรเจ้าทรงสร้างขึ้นมาจาก ฤๅษี 19 ตน คนเกิดวันพฤหัสบดี เป็นคนใจใหญ่ รักเกียรติ มีศักดิ์ศรี มักเกิดที่หนึ่งไปเป็นใหญ่อีกที่หนึ่ง เป็นคนรู้จักใช้ชีวิต มีวิชา มีความรู้ เป็นคนมีหลักการ เหตุผล เป็นที่พึ่งของหมู่ชนทั้งหลาย แต่ว่ามิตรมักให้โทษ ทำคุณคนไม่ขึ้น เมียคนแรกมักตายก่อน หาใหม่คนต่อไปจึงจะดี ในชีวิตจะผ่านความทุกข์ยากหลายหน ชีวิตช่วงวัยต้น กับวัยตอนปลายมั่งมี',
                  style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
                  textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),
                // ปุ่มของมงคล
                SizedBox(
                  width: 400,
                  height: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF000000), Color(0xFF8B5F32)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: khongMon, // เรียกใช้ฟังก์ชันนี้เมื่อปุ่มถูกกด
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: [
                                Image.asset(
                                  'assets/khong.png',
                                  width: 70,
                                  height: 70,
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  'วัตถุมงคล',
                                  style: TextStyle(color: Colors.white, fontSize: 20),
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
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // ปุ่มดอกไม้
                SizedBox(
                  width: 400,
                  height: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF000000), Color(0xFF8B5F32)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: flowerMon, // เรียกใช้ฟังก์ชันนี้เมื่อปุ่มถูกกด
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: [
                                Image.asset(
                                  'assets/flowerBG.png',
                                  width: 70,
                                  height: 70,
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  'ดอกไม้มงคล',
                                  style: TextStyle(color: Colors.white, fontSize: 20),
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
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // ปุ่มอัญมณี
                SizedBox(
                  width: 400,
                  height: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF000000), Color(0xFF8B5F32)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: jewelMon, // เรียกใช้ฟังก์ชันนี้เมื่อปุ่มถูกกด
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: [
                                Image.asset(
                                  'assets/jewel.png',
                                  width: 70,
                                  height: 70,
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  'อัญมณีมงคล',
                                  style: TextStyle(color: Colors.white, fontSize: 20),
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
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
