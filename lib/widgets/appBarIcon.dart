import 'package:flutter/material.dart';

class AppBarIcon extends StatefulWidget {
  AppBarIcon({Key key}) : super(key: key);

  @override
  _AppBarIconState createState() => _AppBarIconState();
}

class _AppBarIconState extends State<AppBarIcon> {
  int notification = 5;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/notifications');
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 150.0,
          width: 30.0,
          child: Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/notifications');
                },
              ),
              notification <= 0
                  ? Container()
                  : Positioned(
                      child: Stack(
                        children: <Widget>[
                          Icon(
                            Icons.brightness_1,
                            size: 20.0,
                            color: Colors.blue[300],
                          ),
                          Positioned(
                              top: 4.0,
                              right: 6.0,
                              child: Center(
                                child: Text(
                                  notification.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
