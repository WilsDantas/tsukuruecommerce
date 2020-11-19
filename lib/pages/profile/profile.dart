import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/appBarIcon.dart';
import '../../widgets/bottom_navigator.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('William Santos Dantas'),
        centerTitle: false,
        actions: [AppBarIcon()],
      ),
      body: bodyApp(),
      bottomNavigationBar: BottomNavigator(2),
    );
  }

  Widget bodyApp() {
    return ListView(
      children: [
        avatar(),
        Container(
          padding: EdgeInsets.only(top: 20),
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              member(),
              SizedBox(
                height: 10,
              ),
              text(Icon(FontAwesomeIcons.fileAlt), 'Meus Dados', '/myData'),
              text(Icon(FontAwesomeIcons.clipboard), 'Historico', '/historic'),
              text(Icon(FontAwesomeIcons.creditCard), 'Pagamento', '/payment'),
              text(Icon(FontAwesomeIcons.heart), 'Favoritos', '/favorites'),
              text(Icon(FontAwesomeIcons.bell), 'Notificações',
                  '/notifications'),
              text(Icon(FontAwesomeIcons.map), 'Onde Estamos?', '/location'),
              _buttonLogout()
            ],
          ),
        )
      ],
    );
  }

  Widget avatar() {
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Container(
        height: 100,
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
          ),
        ),
      ),
    );
  }


  Widget member() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                FontAwesomeIcons.exclamationCircle,
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Membro Vip',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          Text(
            'Upgrade',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }


  Widget text(Icon icon, String name, String url) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, url);
      },
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon,
                SizedBox(
                  width: 10,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
            Icon(
              Icons.navigate_next,
              size: 30,
            )
          ],
        ),
      ),
    );
  }

  Widget _buttonLogout() {
    return Container(
      height: 35,
      width: 130,
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
              ),
              alignment: Alignment.center,
              child: Icon(
                FontAwesomeIcons.signOutAlt,
                size: 19,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                'Sair',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
