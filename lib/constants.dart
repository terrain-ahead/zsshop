import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

const kPrimaryColor = Color(0xFFED3022);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = Colors.grey;
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
String user_email;
String user_password;

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Пожалуйста введите свою почту";
const String kInvalidEmailError = "Пожалуйста введите действительную\nпочту";
const String kPassNullError = "Пожалуйста введите ваш пароль";
const String kShortPassError = "Пароль слишком короткий";
const String kMatchPassError = "Пароли не совпадают";
const String kNamelNullError = "Пожалуйста введите ваше имя";
const String kPhoneNumberNullError = "Пожалуйста введите ваш номер телефона";
const String kAddressNullError = "Пожалуйста введите свой адрес";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
