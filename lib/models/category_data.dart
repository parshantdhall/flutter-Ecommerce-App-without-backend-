import 'package:uuid/uuid.dart';
// data model
import './category_data_model.dart';
// Importing product data..
import './products_data_list.dart';

List<CategoryDataModel> dataSet = [
  CategoryDataModel(
    id: Uuid().v1(),
    catTitle: 'Headphones',
    imageUrl:
        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
    productList: productHeadphones,
  ),
  CategoryDataModel(
    id: Uuid().v1(),
    catTitle: 'Watches',
    imageUrl:
        'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
    productList: productWatches,
  ),
  CategoryDataModel(
    id: Uuid().v1(),
    catTitle: 'shoes',
    imageUrl:
        'https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
    productList: productShoes,
  ),
  CategoryDataModel(
    id: Uuid().v1(),
    catTitle: 'Phones',
    imageUrl:
        'https://images.unsplash.com/photo-1541096088083-65e23ee14e43?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
    productList: productPhones,
  ),
  CategoryDataModel(
    id: Uuid().v1(),
    catTitle: 'Tshirts',
    imageUrl:
        'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
    productList: productTshirts,
  ),
  CategoryDataModel(
    id: Uuid().v1(),
    catTitle: 'jeans',
    imageUrl:
        'https://images.unsplash.com/photo-1542272604-787c3835535d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
    productList: productJeans,
  ),
  CategoryDataModel(
    id: Uuid().v1(),
    catTitle: 'Tv',
    imageUrl:
        'https://images.unsplash.com/photo-1547658718-1cdaa0852790?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
    productList: productTv,
  ),
];
