import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/php/constants.dart';


class SignUp{
  final String password;
  final String email;
  final String name;
  final String surname;
  final String tel;
  // ignore: non_constant_identifier_names
  var local_url = url+'index.php';

  SignUp(this.password, this.email, this.name, this.surname, this.tel);

  Future<bool> registerUser() async {
    var data = {
      "first_name":name,
      "last_name":surname,
      "email":email,
      "phone_number":tel,
      "password":password,
    };
    var res = await http.post(local_url,body: data);
    print(res.body);
    if(jsonDecode(res.body) == "account already exists"){
      Fluttertoast.showToast(msg: "account exists, please login",toastLength: Toast.LENGTH_SHORT);
      return false;
    }else if(jsonDecode(res.body) == "true"){
      Fluttertoast.showToast(msg: "account created",toastLength: Toast.LENGTH_SHORT);
      return true;
    }else{
      Fluttertoast.showToast(msg: "error",toastLength: Toast.LENGTH_SHORT);
      return false;
    }
  }
}