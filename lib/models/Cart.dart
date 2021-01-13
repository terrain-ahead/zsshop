import 'package:flutter/material.dart';
import 'package:shop_app/models/Products.dart';

class Cart {
  final Products product;
  final int numOfItem;

  Cart({@required this.product, @required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [];
