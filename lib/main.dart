import 'package:flutter/material.dart';

// Importing pages
import './pages/products_page.dart';
import './pages/category_page.dart';

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
              body1: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CategoryPage(),
        ProductsPage.pageUrl: (context) => ProductsPage(),
      },
    );
  }
}
