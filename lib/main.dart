import 'package:flutter/material.dart';

// Importing pages
import './pages/products_page.dart';
import './pages/tabs_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              bodyText2: TextStyle(color: Colors.grey, fontSize: 20),
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
