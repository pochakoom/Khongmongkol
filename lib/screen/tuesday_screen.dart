import 'package:flutter/material.dart';
import 'package:khongmongkol/screen/home_screen.dart';
import 'package:khongmongkol/screen/structure.dart';

class TuesdayScreen extends StatelessWidget {
  const TuesdayScreen({super.key});

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
                  'วันอังคาร',
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
                  'TUESDAY',
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
                      image: AssetImage('assets/tue.png'), // ใช้รูปภาพจาก assets
                      fit: BoxFit.cover, // ปรับขนาดรูปภาพให้พอดีกับ container
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.all(16.0), // สามารถปรับเปลี่ยนขนาดของ padding ได้
                  child: Text(
                  'ตามตำนานโหราศาสตร์ไทย อธิบายไว้ว่า อังคาร เป็นเทพยดาอัฏฐเคราะห์ ที่พระอิศวรผู้เป็นเจ้าทรงสร้างขึ้นมาจากกระบือ 8 ตัว มีกายสีแก้วเพทาย (สีชมพู) วิมานสีทับทิม ทรงกระบือเป็นพาหนะ คนเกิดวันอังคาร จึงมีลักษณะนิสัยเหมือนกระบือ เป็นผู้มีกำลังกล้าแข็ง กล้าหาญ มุมานะ อารมณ์รุนแรงฉุนเฉียว ขยันขันแข็ง เป็นนักสู้ ความคิดอ่านว่องไว เป็นคนเจรจาอ่อนหวานมีเล่ห์เหลี่ยม รู้จักการเข้าหาผู้ใหญ่ ญาติมักนำความทุกข์มาให้ ชีวิตต้องผ่านอุปสรรคสี่ครั้ง แล้วจึงจะเป็นสุข',
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
