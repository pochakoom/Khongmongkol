import 'package:flutter/material.dart';
import 'package:khongmongkol/screen/menu_screen.dart';
import 'package:khongmongkol/screen/home_screen.dart';
import 'package:khongmongkol/screen/search_screen.dart';

class Structure extends StatelessWidget {
  final Widget body;
  final Color? menuIconColor;
  final Color? homeIconColor;
  final Color? searchIconColor;

  const Structure({
    super.key,
    required this.body,
    this.menuIconColor,
    this.homeIconColor,
    this.searchIconColor,
  });

  void menu(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MenuScreen()),
    );
  }

  void home(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

   void search(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SearchScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: AppBar(
          backgroundColor: const Color(0xFFC5A43F),
          flexibleSpace: Image.asset(
            'assets/heading.png',
            fit: BoxFit.cover,
          ),
          centerTitle: true,
        ),
      ),
      body: body,
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFC5A43F),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              iconSize: 40,
              color: menuIconColor ?? Colors.white,
              onPressed: () {
                menu(context);
              },
            ),
            IconButton(
              icon: const Icon(Icons.home),
              iconSize: 40,
              color: homeIconColor ?? Colors.white,
              onPressed: () {
                home(context);
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              iconSize: 40,
              color: searchIconColor ?? Colors.white,
              onPressed: () {
                 search(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
