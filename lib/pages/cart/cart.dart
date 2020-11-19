import 'package:flutter/material.dart';


import '../../widgets/bottom_navigator.dart';
import '../../widgets/cardPrice.dart';
import '../../widgets/appBarIcon.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho'),
        centerTitle: false,
        actions: [
          AppBarIcon(),
        ],
      ),
      body: bodyPage(),
      bottomNavigationBar: BottomNavigator(1),
    );
  }

  Widget bodyPage() {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        _buildFavoriteList(context),
        Container(
          child: CardPrice(
            100.0,
            false,
          ),
        ),
      ],
    );
  }

  Widget _buildFavoriteList(context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: 4,
      itemBuilder: (context, index) {
        return _buildFavoriteItem(context);
      },
    );
  }

  Widget _buildFavoriteItem(context) {
    return Container(
      child: Card(
        elevation: 7,
        child: Container(
          child: Dismissible(
            key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
            direction: DismissDirection.startToEnd,
            background: Container(
              color: Colors.red,
              child: Align(
                alignment: Alignment(-0.9, 0.0),
                child: Icon(Icons.delete, color: Colors.white),
              ),
            ),
            onDismissed: (direction) {
              setState(() {});
            },
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/ProductDetail');
              },
              child: ListTile(
                leading: _productImage(),
                title: _showDetailItemFavorite(context),
                trailing: quantityProduct(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget quantityProduct() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 110,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        //TODO REMOVE QTY CART ITEM
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        //TODO QTY CART ITEM
                      },
                      child: Text(
                        '5',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        //TODO ADD QTY CART ITEM
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _productImage() {
    return Image.network(
      'https://http2.mlstatic.com/D_NQ_NP_781282-MLB29335745363_022019-O.jpg',
    );
  }

  Widget _showDetailItemFavorite(context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(
              'Camisa Log Horizon Shiroe Shiroe',
              maxLines: 2,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "R\$ 42.42",
                style: TextStyle(color: Colors.black54, fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
