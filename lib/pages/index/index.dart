import 'package:flutter/material.dart';

import '../../widgets/bottom_navigator.dart';
import '../../widgets/productCard.dart';
import '../../widgets/appBarIcon.dart';

class ShoppingIndexPage extends StatefulWidget {
  ShoppingIndexPage({Key key}) : super(key: key);

  @override
  _ShoppingIndexPageState createState() => _ShoppingIndexPageState();
}

class _ShoppingIndexPageState extends State<ShoppingIndexPage> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text('Bem vindo a Tsukuru');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cusSearchBar,
        centerTitle: false,
        actions: [
          IconButton(
            icon: cusIcon,
            onPressed: () {
              setState(
                () {
                  if (this.cusIcon.icon == Icons.search) {
                    this.cusIcon = Icon(Icons.cancel);
                    this.cusSearchBar = TextField(
                      onSubmitted: (value) {
                        Navigator.pushNamed(context, '/AppSearch');
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Pesquise Aqui!'),
                      textInputAction: TextInputAction.go,
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    );
                  } else {
                    this.cusIcon = Icon(Icons.search);
                    this.cusSearchBar = Text('Bem vindo a Tsukuru');
                  }
                },
              );
            },
          ),
          AppBarIcon(),
        ],
      ),
      body: bodyPage(),
      bottomNavigationBar: BottomNavigator(0),
    );
  }

  Widget bodyPage() {
    return ListView(
      children: [
        treanding(),
        viewMore('Popular do Dia'),
        popularDeals(),
        viewMore('Para Você'),
        forYou(),
      ],
    );
  }

  Widget viewMore(String text) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              // TODO "VER TODOS"
            },
            child: Text(
              'Ver Todos',
              style: TextStyle(
                color: Colors.blue[300],
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget treanding() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/ProductDetail');
      },
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 5, right: 10),
                  color: Colors.blue[300],
                  child: Text(
                    'Mais Vendido',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 10, top: 10, bottom: 10),
                  child: Text(
                    'Camisa Log Horizon',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 10),
                  child: Text(
                    'R\$ 42.42',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: Image.network(
                  'https://http2.mlstatic.com/D_NQ_NP_781282-MLB29335745363_022019-O.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget popularDeals() {
    return Container(
      height: 120.0,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 1,
        children: List.generate(6, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/ProductDetail');
            },
            child: ProductCard(),
          );
        }),
      ),
    );
  }

  Widget forYou() {
    return Container(
      child: GridView.count(
        primary: false,
        shrinkWrap: true,
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/ProductDetail');
            },
            child: ProductCard(),
          );
        }),
      ),
    );
  }
}
