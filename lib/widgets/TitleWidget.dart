import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatefulWidget {
  TitleWidget({Key key}) : super(key: key);

  @override
  _TitleWidgetState createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Tsu',
          style: GoogleFonts.portLligatSans(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Theme.of(context).primaryColor,
          ),
          children: [
            TextSpan(
              text: 'kuru',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}