import 'package:flutter/material.dart';

class AppBarIcon extends StatefulWidget {
  AppBarIcon({Key key}) : super(key: key);

  @override
  _AppBarIconState createState() => _AppBarIconState();
}

class _AppBarIconState extends State<AppBarIcon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/notifications');
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: new Container(
          height: 150.0,
          width: 30.0,
          child: new Stack(
            children: <Widget>[
              new IconButton(
                icon: new Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/notifications');
                },
              
              ),
              false
                  ? new Container()
                  : new Positioned(
                      child: new Stack(
                      children: <Widget>[
                        new Icon(
                          Icons.brightness_1,
                          size: 20.0,
                          color: Colors.blue[300],
                        ),
                        new Positioned(
                            top: 4.0,
                            right: 6.0,
                            child: new Center(
                              child: new Text(
                                '5',
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )),
                      ],
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
