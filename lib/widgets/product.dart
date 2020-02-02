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
      // Image.............................
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 3,
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 2,
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
            // Just for the space between these widgets........
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.04,
            ),
            // Content....................
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      productTitle,
                      style: Theme.of(context).textTheme.title,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$${productPrice.toString()}',
                      style: Theme.of(context).textTheme.body2,
                    ),
                    RaisedButton.icon(
                      color: Colors.lightBlue,
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Buy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
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
