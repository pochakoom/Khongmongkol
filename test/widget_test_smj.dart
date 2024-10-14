import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:khongmongkol/screen/wid_khongmon.dart';
import 'package:khongmongkol/screen/item_data.dart';

void main() {
  // ตัวอย่างข้อมูล Item สำหรับทดสอบ
  final testItem = Item(
      'พระแก้ว',
      'เป็นพระพุทธรูปที่สำคัญและมีชื่อเสียงที่สุดในประเทศไทย...',
      'assets/sunday/thing/พระแก้ว.png',
      'วัดพระศรีมหาอุมาเทวี ถนนปั้น แขวงบางรัก เขตบางรัก กรุงเทพมหานคร',
      'วัดราชนัดดารามวรวิหาร ถ.มหาไชย แขวงวัดบวรนิเวศ เขตพระนคร กรุงเทพมหานคร',
      'สำนักงานใหญ่คเณศเทวา 100/13 หมู่10 ต.หนองปรือ อ.บางละมุง จ.ชลบุรี',
      'https://www.google.com/maps?q=13.7242482,100.5229171',
      'https://www.google.com/maps?q=13.7548169,100.5041554',
      'https://www.google.com/maps?q=12.9107957,100.90307',
      'thing2',
      'mon',
      'assets/sun_t2_m1.png',
      'assets/sun_t2_m2.png',
      'assets/sun_t2_m3.png');

  testWidgets('WidKhongmon shows item details and map buttons',
      (WidgetTester tester) async {
    // Mock Navigator
    await tester.pumpWidget(
      MaterialApp(
        home: WidKhongmon(item: testItem, day: 'mon'),
        onGenerateRoute: (settings) {
          if (settings.name == '/map') {
            return MaterialPageRoute(
                builder: (context) => const MapScreenMock());
          }
          return null;
        },
      ),
    );

    // ตรวจสอบว่ามีการแสดงชื่อวัตถุมงคล
    expect(find.text('พระแก้ว'), findsOneWidget);

    // ตรวจสอบว่ามีการแสดงปุ่ม "ดูแผนที่"
    expect(find.text('ดูแผนที่'), findsNWidgets(3)); // ควรมี 3 ปุ่ม

    // ทดสอบการกดปุ่ม "ดูแผนที่" ปุ่มแรก
    await tester.tap(find.text('ดูแผนที่').first);
    await tester.pumpAndSettle();

    // ตรวจสอบว่ามีการนำทางไปยัง MapScreenMock
    // expect(find.byType(MapScreenMock), findsOneWidget);
  });
}

// Mock MapScreen ที่ใช้สำหรับทดสอบ
class MapScreenMock extends StatelessWidget {
  const MapScreenMock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Mock Map Screen')),
    );
  }
}