import 'package:flutter/material.dart';
import 'package:watch_store_by_me/screens/main_screen/main_screen.dart';
import 'package:watch_store_by_me/screens/register_user.dart';
import 'package:watch_store_by_me/screens/send_otp_screen.dart';
// import 'package:watch_store/screens/get_otp_screen.dart';
// import 'package:watch_store/screens/main_screen/main_screen.dart';
// import 'package:watch_store/screens/product_list.dart';
// import 'package:watch_store/screens/register_screen.dart';

// import '../screens/send_otp_screen.dart';
import '../screens/get_otp_screen.dart';
import '../screens/product_screen.dart';
import 'names.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Screens.root: (context) => SendOtpScreen(),
  Screens.getOtpScreen: (context) => GetOtpScreen(),
  Screens.registerUser: (context) => RegisterUser(),
  Screens.mainScreen: (context) => const MainScreen(),
  Screens.productList: (context) => const ProductScreen(),
};
