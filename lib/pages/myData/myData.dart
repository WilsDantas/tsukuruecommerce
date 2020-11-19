import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/appBarIcon.dart';

class MyDataPage extends StatefulWidget {
  MyDataPage({Key key}) : super(key: key);

  @override
  _MyDataPageState createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Dados'),
        centerTitle: false,
        actions: [
          AppBarIcon(),
        ],
      ),
      body: bodyApp(),
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
              SizedBox(
                height: 10,
              ),
              text(Icon(FontAwesomeIcons.user), 'William Santos Dantas'),
              text(Icon(FontAwesomeIcons.at), 'Wilsdantas@gmail.com'),
              text(Icon(FontAwesomeIcons.phone), '81 9 8672-4039'),
              _button()
            ],
          ),
        )
      ],
    );
  }

  Widget _button() {
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
            child: GestureDetector(
              onTap: () {
                // TODO EDIT BUTTON
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Editar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget text(Icon icon, String name) {
    return Card(
      elevation: 2.2,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(5),
        ),
        child: ListTile(
          leading: icon,
          title: Text(name),
        ),
      ),
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
}
