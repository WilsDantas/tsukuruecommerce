import 'package:flutter/material.dart';
import 'package:tsukuru_e_commerce/pages/splash/splash.dart';
import 'package:tsukuru_e_commerce/pages/welcome/welcomePage.dart';

// Pages

class Routes {
  static final routes = <String, WidgetBuilder>{
    '/': (context) => Splash(),
    '/welcome': (context) => WelcomePage(),
  };
}
