import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_animations/loading_animations.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIOverlays([]);

    // _checkAuth().then(
    //   (_) => {
    //     Navigator.pushReplacementNamed(context, '/welcome'),
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoadingFlipping.circle(
            size: 30,
            borderColor: Theme.of(context).primaryColor,
          ),
          Container(
            height: 10.0,
          ),
          Text(
            'Carregando...',
            style: TextStyle(
                color: Theme.of(context).primaryColor, fontSize: 16.0),
          ),
        ],
      ),
    ));
  }

  Future<String> _checkAuth() async {
    await Future.delayed(Duration(seconds: 5));
    return null;
  }
}
