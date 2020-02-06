import 'package:flutter/material.dart';

// importing pages
import '../pages/filters.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.filter),
            title: Text("Filter"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, FilterPage.pageUrl);
            },
          ),
        ],
      ),
    );
  }
}
