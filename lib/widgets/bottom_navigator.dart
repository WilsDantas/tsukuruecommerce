import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// ignore: must_be_immutable
class BottomNavigator extends StatelessWidget {
  // ignore: non_constant_identifier_names
  int _active_item = 0;

  BottomNavigator(this._active_item);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Theme.of(context).primaryColor,
      height: 50.0,
      index: _active_item,
      backgroundColor: Theme.of(context).backgroundColor,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 600),
      items: <Widget>[
        Icon(Icons.home),
        Icon(Icons.shopping_cart),
        Icon(Icons.person),
      ],
      onTap: (index) {
        if (index != _active_item) {
          switch (index) {
            case 2:
              Navigator.pushReplacementNamed(context, '/profile');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/cart');
              break;
            case 0:
              Navigator.pushReplacementNamed(context, '/index');
              break;
            default:
          }
        }
      },
    );
  }
}
