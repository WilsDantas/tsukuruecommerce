import 'package:flutter/material.dart';
import 'package:tsukuru_e_commerce/pages/cart/cart.dart';
import 'package:tsukuru_e_commerce/pages/index/index.dart';
import 'package:tsukuru_e_commerce/pages/login/loginPage.dart';
import 'package:tsukuru_e_commerce/pages/register/register.dart';
import 'package:tsukuru_e_commerce/pages/splash/splash.dart';
import 'package:tsukuru_e_commerce/pages/welcome/welcomePage.dart';

// Pages

class Routes {
  static final routes = <String, WidgetBuilder>{
    '/': (context) => Splash(),
    '/welcome': (context) => WelcomePage(),
    '/login': (context) => LoginPage(),
    '/register': (context) => RegisterPage(),
    '/index': (context) => ShoppingIndexPage(),
    '/cart': (context) => CartPage(),
  };
}
