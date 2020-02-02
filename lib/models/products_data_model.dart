import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

class ProductDataModel {
  String id;
  final String pTitle;
  final double pPrice;
  final String imgUrl;

  ProductDataModel({
    @required this.pTitle,
    @required this.pPrice,
    @required this.imgUrl,
  }) {
    this.id = Uuid().v4();
  }
}
