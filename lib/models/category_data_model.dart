import 'package:flutter/foundation.dart';

// importing Product data model
import './products_data_model.dart';

class CategoryDataModel {
  final String id;
  final String catTitle;
  final String imageUrl;
  final List<ProductDataModel> productList;
  CategoryDataModel({
    @required this.id,
    @required this.catTitle,
    @required this.imageUrl,
    @required this.productList,
  });
}
