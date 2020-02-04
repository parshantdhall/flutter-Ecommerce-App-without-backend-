import 'package:flutter/material.dart';

// Importing pages
import './pages/products_page.dart';
// import './pages/category_page.dart';
import './pages/tabs_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              body2: TextStyle(color: Colors.grey, fontSize: 20),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TabsPage(),
        ProductsPage.pageUrl: (context) => ProductsPage(),
      },
    );
  }
}
