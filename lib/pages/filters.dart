import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterPage extends StatefulWidget {
  static const pageUrl = '/filters';
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter Page"),
      ),
      drawer: MainDrawer(),
      body: Container(
        child: Center(
          child: Text("Filters"),
        ),
      ),
    );
  }
}
