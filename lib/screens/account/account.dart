import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class AccountWindow extends StatefulWidget {
  @override
  _AccountWindowState createState() => _AccountWindowState();
}

class _AccountWindowState extends State<AccountWindow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(46),
      width: getProportionateScreenWidth(46),
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
          icon: Icon(
            Icons.account_circle_outlined,
            color: kPrimaryColor,
          ),
          onPressed: null
      ),
    );
  }
}
