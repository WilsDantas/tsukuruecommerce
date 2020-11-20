import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificações'),
        centerTitle: true,
      ),
      body: bodyPage(),
    );
  }

  Widget bodyPage() {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        _buildFavoriteList(context),
      ],
    );
  }

  Widget _buildFavoriteList(context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: 12,
      itemBuilder: (context, index) {
        return _buildFavoriteItem(context);
      },
    );
  }

  Widget _buildFavoriteItem(context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/ProductDetail');
      },
      child: Container(
        child: Card(
          elevation: 10,
          child: Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            padding: EdgeInsets.symmetric(horizontal: 5),
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
              child: ListTile(
                leading: _productImage(),
                title: _showDetailItemFavorite(context),
                trailing: Text('09:35'),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _productImage() {
    return Image.network(
      'https://http2.mlstatic.com/D_NQ_NP_781282-MLB29335745363_022019-O.jpg',
    );
  }

  Widget _showDetailItemFavorite(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              child: Text(
                '50% OFF',
                maxLines: 1,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Text(
          "Camisa Log Horizon Shiroe",
          style: TextStyle(color: Colors.black54, fontSize: 18),
        ),
      ],
    );
  }
}
