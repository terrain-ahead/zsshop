import 'dart:convert';

import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:http/http.dart' as http;

class FinalOrder{
  final List<Cart>orders;
  FinalOrder(this.orders);

  Future<int> getUserId() async {
    var data = {
      "email":user_email,
      "password":user_password
    };
    var res = await http.post("https://zs-shop-kazan.herokuapp.com/customergetid.php",body: data);
    print(int.parse(res.body));
    int id = int.parse(res.body);
    return id;
  }

  Future<int> saveOrder(int index) async {
    var data = {
      "product_id":orders[index].product.id_product.toString(),
      "numofproducts":orders[index].numOfItem.toString(),
    };
    var res = await http.post("https://zs-shop-kazan.herokuapp.com/orderadd.php",body: data);
    print(res.body);
    int id = int.parse(res.body);
    return id;
  }

  Future<bool> makeFinalOrder(int userId, int orderId, String date) async{
    var data = {
      "order_id":orderId.toString(),
      "customer_id":userId.toString(),
      "date":date
    };
    var res = await http.post("https://zs-shop-kazan.herokuapp.com/finalorderadd.php",body: data);
    print(res.body);
    if(jsonEncode(res.body) == "true"){
      return true;
    }else if(jsonEncode(res.body) == "true"){
      return false;
    }
  }

  String getDate(){
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);
    return date.toString();
  }
}