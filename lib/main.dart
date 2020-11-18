import 'package:flutter/material.dart';
import './constants/app_theme.dart';
import './routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: themeData,
      initialRoute: '/',
      routes: Routes.routes,
    );
  }
}
