import 'package:flutter/material.dart';
import '../widgets/product.dart';
import '../models/products_data_model.dart';

class ProductsPage extends StatelessWidget {
  // Url of this page
  static const pageUrl = '/products-page';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final List<ProductDataModel> pList = routeArgs['productsList'];
    return Scaffold(
      appBar: AppBar(
        title: Text(routeArgs['catTitle']),
      ),
      body: Container(
        child: pList.length > 0
            ? ListView.builder(
                itemBuilder: (_, i) {
                  return Product(
                    id: pList[i].id,
                    imgurl: pList[i].imgUrl,
                    productPrice: pList[i].pPrice,
                    productTitle: pList[i].pTitle,
                  );
                },
                itemCount: pList.length,
              )
            : Center(
                child: Text("No Products Under ${routeArgs['catTitle']}"),
              ),
      ),
    );
  }
}
