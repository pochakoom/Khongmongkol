import 'package:flutter/material.dart';
import 'package:khongmongkol/screen/structure.dart';
import 'package:khongmongkol/screen/details_screen.dart'; // Import the details screen

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // List of all items
  List<String> allItems = [
    'เสือคาบดาบ', 'พญาครุฑ', 'พระรอด', 'ต้นมะพร้าว', 'ว่านมหาลาภ',
    'ต้นโป๊ยเซียน', 'ทับทิมมงคล', 'มูนสโตน', 'โรสควอตซ์',
    'พระสมเด็จวัดระฆัง', 'พระพงวัดปากน้ำ', 'อวค์พระพรหม', 'ว่านมหานิยม',
    'ต้นเข็ม', 'ต้นโป๊ยเซียน', 'เพชร', 'พวงชมพู', 'มรกต',
    'พระพุทธรูปยืนปางลีลา', 'หลวงปู่โต', 'พระแก้วมรกต', 'ว่านสี่ทิศ',
    'ว่านธรณีสาร', 'ต้นศุภโชค', 'มรกต', 'โอปอล์', 'โกเมน',
    'กรุเตาเรียง', 'พระแม่อุมาเทวี', 'ไผ่กวนอิม', 'ว่านเพชรารายณ์',
    'ต้นศุภโชค', 'ลุกแก้ว', 'บุษราคัม', 'เพชร', 'รูปปั้นหนู',
    'ปลวงปู่โต๊ะ', 'พระพุทธรูปปางรำพึง', 'ว่านเศรษฐีเรือนกลาง',
    'ต้นกวักมรกต', 'ต้นเฟิร์นบ้านหลวง', 'โมรา', 'ทอง', 'อความารีน',
    'พญานาคราช', 'พระพุทธรูปปางห้ามญาติ', 'พระกำแพงว่านหน้ากลาง',
    'ไผ่มงคล', 'ต้นวาสนา', 'ต้นโมก', 'พลอย', 'ไทเกอร์อาย', 'ออบซิเดียน',
    'พระแม่อุมาเทวี', 'พระแก้ว', 'พระดพธิสัตว์กวนอิม', 'ว่านมหาลาภ',
    'ต้นมะพร้าว', 'ต้นราชพฤกษ์', 'ซันสโตน', 'โกเมน', 'คาร์เนเลียน'
  ];
  
  List<String> displayedItems = []; // Items to display based on the search

  @override
  void initState() {
    super.initState();
    displayedItems = allItems; // Initialize displayedItems with allItems
  }

  void _filterItems(String query) {
    final filteredItems = allItems
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();

    setState(() {
      displayedItems = filteredItems; // Update displayed items
    });
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (value) {
                  _filterItems(value); // Filter items based on input
                },
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: displayedItems.length, // Count of displayed items
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      displayedItems[index],
                      style: const TextStyle(color: Colors.white), // Text color
                    ),
                    onTap: () {
                      // Navigate to DetailsScreen when an item is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(item: displayedItems[index]),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      searchIconColor: const Color.fromARGB(255, 0, 0, 0), // Customize search icon color
    );
  }
}
