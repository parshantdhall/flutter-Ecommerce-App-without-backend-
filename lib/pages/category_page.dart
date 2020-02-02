import 'package:flutter/material.dart';

// Data Set
import '../models/category_data.dart';

// Widgets
import '../widgets/category_card.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(10),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: dataSet.map((item) {
            return CategoryCard(
              key: ValueKey(item.id),
              title: item.catTitle,
              img: item.imageUrl,
              productsList: item.productList,
            );
          }).toList(),
        ),
      ),
    );
  }
}
