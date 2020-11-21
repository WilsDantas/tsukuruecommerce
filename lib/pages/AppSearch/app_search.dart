import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AppSearch extends StatefulWidget {
  AppSearch({Key key}) : super(key: key);

  @override
  _AppSearchState createState() => _AppSearchState();
}

class _AppSearchState extends State<AppSearch> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text('O que deseja comprar hoje?');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: cusSearchBar,
          actions: [
            IconButton(
              icon: cusIcon,
              onPressed: () {
                setState(
                  () {
                    if (this.cusIcon.icon == Icons.search) {
                      this.cusIcon = Icon(Icons.cancel);
                      this.cusSearchBar = TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquise Aqui!'),
                        textInputAction: TextInputAction.go,
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      );
                    } else {
                      this.cusIcon = Icon(Icons.search);
                      this.cusSearchBar = Text('O que deseja comprar hoje?');
                    }
                  },
                );
              },
            ),
          ],
          // bottom: PreferredSize(
          //   preferredSize: Size(50,50),
          //   child: Container(),
          // ),
          // elevation: 20.0,
        ),
        body: bodyPage());
  }

  Widget bodyPage() {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: 12,
            itemBuilder: (context, index) {
              return _buildShirts();
            },
          ),
        ],
      ),
    );
  }

  Widget searchInput() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          hintText: 'Oque deseja comprar hoje?',
          prefixIcon: Icon(Icons.search, color: Colors.black54),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(20),
        ),
      ),
    );
  }

  Widget _buildShirts() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Card(
        elevation: 1.0,
        child: Container(
          child: ListTile(
            leading: _productImage(),
            title: _showDetailItemFavorite(context),
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
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Camisa Log Horizon Shiroe Shiroe Shiroe',
              maxLines: 1,
              style: TextStyle(fontSize: 18),
            ),
          ),
          RatingBar.builder(
            itemSize: 14,
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: null,
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
          //_dropdownButton(),
        ],
      ),
    );
  }
}
