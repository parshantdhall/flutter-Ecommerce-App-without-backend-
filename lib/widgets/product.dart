import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String imgurl;
  final String id;
  final String productTitle;
  final double productPrice;
  Product(
      {@required this.id,
      @required this.imgurl,
      @required this.productPrice,
      @required this.productTitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey(id),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 3,
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, .3),
                      blurRadius: 3,
                      offset: Offset(2, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  child: Image.network(
                    imgurl,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    Text(productTitle),
                    Text('\$$productPrice.toString()'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
