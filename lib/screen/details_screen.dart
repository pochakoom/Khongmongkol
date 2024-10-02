import 'package:flutter/material.dart';
import 'package:khongmongkol/screen/structure.dart'; // Assuming Structure is imported from your project
import 'package:khongmongkol/screen/item_data.dart'; // Import your item data model

class DetailsScreen extends StatelessWidget {
  final String item;

  const DetailsScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Fetch the item details from the itemData list
    final selectedItem = itemData.firstWhere(
      (element) => element.name == item,
      orElse: () => Item('Unknown', 'Details not found', '','','',''), // Default item if not found
    );

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
                      Navigator.of(context).pop(); // Navigate back
                    },
                  ),
                ),
                const SizedBox(width: 8), // Spacing between button and text
                // Header Text
                Expanded(
                  child: Text(
                    selectedItem.name, // Display the item name as the header
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center, // Center align the header
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16), // Space between header and detail box
            // Detail Box with Fixed Height
            Container(
              height: 600, // Set fixed height
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF000000),
                    Color(0xFF737373),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  // First Row: Picture and Details
                  Row(
                    children: [
                      // Image on the left
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12), // Rounded corners for image
                        child: Image.asset(
                          selectedItem.picture, // Use the picture property from the selected item
                          height: 150,
                          fit: BoxFit.cover, // Ensure the image covers the space
                        ),
                      ),
                      const SizedBox(width: 16), // Space between image and text
                      Expanded(
                        child: SingleChildScrollView( // Make the detail text scrollable
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                            children: [
                              Text(
                                selectedItem.details, // Show the selected item's details
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white, // Changed to white for better contrast
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16), // Space between rows

                  // Second Row: First Additional Picture
                  Row(
                    children: [
                      // Image on the left
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12), // Rounded corners for image
                        child: Image.asset(
                          selectedItem.picture, // Use the picture property from the selected item
                          height: 100,
                          fit: BoxFit.cover, // Ensure the image covers the space
                        ),
                      ),
                      const SizedBox(width: 16), // Space between image and text
                      Expanded(
                        child: SingleChildScrollView( // Make the detail text scrollable
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                            children: [
                              Text(
                                selectedItem.address1, // Show the selected item's details
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white, // Changed to white for better contrast
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16), // Space between images

                  // Third Row: Second Additional Picture
                  Row(
                    children: [
                      // Image on the left
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12), // Rounded corners for image
                        child: Image.asset(
                          selectedItem.picture, // Use the picture property from the selected item
                          height: 100,
                          fit: BoxFit.cover, // Ensure the image covers the space
                        ),
                      ),
                      const SizedBox(width: 16), // Space between image and text
                      Expanded(
                        child: SingleChildScrollView( // Make the detail text scrollable
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                            children: [
                              Text(
                                selectedItem.address2, // Show the selected item's details
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white, // Changed to white for better contrast
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      // Image on the left
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12), // Rounded corners for image
                        child: Image.asset(
                          selectedItem.picture, // Use the picture property from the selected item
                          height: 100,
                          fit: BoxFit.cover, // Ensure the image covers the space
                        ),
                      ),
                      const SizedBox(width: 16), // Space between image and text
                      Expanded(
                        child: SingleChildScrollView( // Make the detail text scrollable
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                            children: [
                              Text(
                                selectedItem.address3, // Show the selected item's details
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white, // Changed to white for better contrast
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      searchIconColor: const Color.fromARGB(255, 0, 0, 0), // Customize this as needed
    );
  }
}
