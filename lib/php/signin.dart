import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/php/constants.dart';

class SignIn{
  final String email;
  final String password;
  // ignore: non_constant_identifier_names
  var local_url = url+'signin.php';
  SignIn(this.email, this.password);

  Future<bool> userSignIn() async {
    var data = {
      "email":email,
      "password":password
    };
    var res = await http.post(local_url,body: data);
    print(res.body);
    if(jsonDecode(res.body) == "account doesnt exist"){
      Fluttertoast.showToast(msg: "Dont have account, create a new one",toastLength: Toast.LENGTH_SHORT);
      return false;
    }else if(jsonDecode(res.body) == "false"){
      Fluttertoast.showToast(msg: "Incorrect password, please try again",toastLength: Toast.LENGTH_SHORT);
      return false;
    }else{
      print(jsonDecode(res.body));
      return true;
    }
  }
}