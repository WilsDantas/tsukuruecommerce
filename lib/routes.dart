import 'package:flutter/material.dart';


import './pages/payment/payment.dart';
import './pages/paymentAdd/paymentAdd.dart';
import './pages/historic/historic.dart';
import './pages/myData/myData.dart';
import './pages/cart/cart.dart';
import './pages/index/index.dart';
import './pages/login/loginPage.dart';
import './pages/profile/profile.dart';
import './pages/register/register.dart';
import './pages/splash/splash.dart';
import './pages/welcome/welcomePage.dart';

// Pages

class Routes {
  static final routes = <String, WidgetBuilder>{
    '/': (context) => Splash(),
    '/welcome': (context) => WelcomePage(),
    '/login': (context) => LoginPage(),
    '/register': (context) => RegisterPage(),
    '/index': (context) => ShoppingIndexPage(),
    '/cart': (context) => CartPage(),
    '/profile': (context) => ProfilePage(),
    '/myData': (context) => MyDataPage(),
    '/historic': (context) => HistoricPage(),
    '/payment': (context) => PaymentPage(),
    '/paymentAdd': (context) => PaymentAddPage(),
  };
}
