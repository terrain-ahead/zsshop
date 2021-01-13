import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shop_app/models/Products.dart';
import 'package:shop_app/php/constants.dart';

// ignore: camel_case_types
class Product_control{
  // ignore: non_constant_identifier_names
  String local_url = url+'product.php';
  int i = 0;
  Future<void> getProducts() async {
    var res = await http.get(local_url);
    print(jsonDecode(res.body));
    List result = jsonDecode(res.body);
    while (i < result.length){
      products.add(Products(
          int.parse(result[i]['id_product']),
          result[i]['prod_name'],
          result[i]['brand'],
          int.parse(result[i]['category_id']),
          result[i]['size'],
          result[i]['color'],
          int.parse(result[i]['price']),
          int.parse(result[i]['quantity']),
          result[i]['img_url']
      ));
      i++;
    }
  }
}