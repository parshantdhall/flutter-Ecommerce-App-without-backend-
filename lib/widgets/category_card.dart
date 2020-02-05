import 'package:flutter/material.dart';
import '../pages/products_page.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.title,
    @required this.img,
    @required this.productsList,
  }) : super(key: key);

  final String title;
  final String img;
  final List productsList;

  @override
  Widget build(BuildContext context) {
    // ONclicking go to the single category page...
    void onClick(ctx) {
      Navigator.pushNamed(ctx, ProductsPage.pageUrl, arguments: {
        'catTitle': title,
        'productsList': productsList,
      });
    }

    return InkWell(
      onTap: () => onClick(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, .2),
              offset: Offset(1, 2),
              blurRadius: 2,
            ),
          ],
        ),
        child: Stack(
          overflow: Overflow.clip,
          fit: StackFit.expand,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                img,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
              bottom: 5,
              right: 10,
            ),
          ],
        ),
      ),
    );
  }
}
