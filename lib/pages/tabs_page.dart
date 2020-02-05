import 'package:flutter/material.dart';
// Importing all the pages....
import './category_page.dart';
import './fav_category_page.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selectedIndex = 0;
  final List<Widget> _pageList = [
    CategoryPage(),
    FavCategoryPage(),
  ];
  void onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String _appBarText =
        _selectedIndex == 0 ? "All Categories" : "Favourite Categories";
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarText),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: const Text('All Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: const Text('Favorite Categories'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: onItemTap,
        iconSize: 20,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text(
                  "This is the header",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
            ListTile(
              title: Text("Menu"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Filter"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _pageList[_selectedIndex],
      ),
    );
  }
}
