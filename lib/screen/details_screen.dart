import 'package:flutter/material.dart';
import 'package:khongmongkol/screen/structure.dart'; // Assuming Structure is imported from your project
import 'package:khongmongkol/screen/item_data.dart'; // Import your item data model

class DetailsScreen extends StatelessWidget {
  final String item;

  const DetailsScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedItem = itemData.firstWhere(
      (element) => element.name == item,
      orElse: () => Item('Unknown', 'Details not found', '','','','','','','','',''), // Default item if not found
    );

    // Reusable method to create image and text rows
    Widget buildImageTextRow(String imagePath, String text) {
      return Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Structure(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/wallpaper.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Header Row with Back Button
            Row(
              children: [
                // Back Button
                Container(
                  width: 40,
                  height: 40,
                  color: const Color(0xFF8B5F32),
                  child: IconButton(
                    icon: const Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                const SizedBox(width: 8),
                // Header Text
                Expanded(
                  child: Text(
                    selectedItem.name,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Main content container with Scrollbar and SingleChildScrollView
            Expanded(
              child: Scrollbar(
                thumbVisibility: true, // Makes the scrollbar visible
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(24.0), // Adjusted padding here for bigger space
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFF000000),
                          const Color(0xFF737373), // Your preferred color
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        // First Row: Picture and Details in a Column
                        Column(
                          children: [
                            // Image at the top
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                selectedItem.picture,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 16), // Spacing between image and details

                            // Details below the image
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    selectedItem.details,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),

                        // Second Row: First Additional Picture and Address1
                        buildImageTextRow(selectedItem.picture, selectedItem.address1),
                        const SizedBox(height: 16),

                        // Third Row: Second Additional Picture and Address2
                        buildImageTextRow(selectedItem.picture, selectedItem.address2),
                        const SizedBox(height: 16),

                        // Fourth Row: Third Additional Picture and Address3
                        buildImageTextRow(selectedItem.picture, selectedItem.address3),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      searchIconColor: const Color.fromARGB(255, 0, 0, 0),
    );
  }
}
