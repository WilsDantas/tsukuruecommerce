import 'package:flutter/material.dart';

class BackButtonWidget extends StatefulWidget {
  BackButtonWidget({Key key}) : super(key: key);

  @override
  _BackButtonWidgetState createState() => _BackButtonWidgetState();
}

class _BackButtonWidgetState extends State<BackButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black, size: 30,),
            ),
            // Text(
            //   'Back',
            //   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            // ),
          ],
        ),
      ),
    );
  }
}
