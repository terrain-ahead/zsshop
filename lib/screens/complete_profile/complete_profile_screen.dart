import 'package:flutter/material.dart';

import 'components/body.dart';

// ignore: must_be_immutable
class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  CompleteProfileScreen(this.password,this.email);
  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Регистрация'),
      ),
      body: Body(email,password),
    );
  }
}
