import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tsukuru_e_commerce/widgets/BackButtonWidget.dart';

class ProductDetailPage extends StatefulWidget {
  ProductDetailPage({Key key}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  String _dropDownValue = '#eb3434';
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: bodyPage(),
    );
  }

  Widget bodyPage() {
    return Stack(
      children: [
        ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              height: 300,
              child: Image.network(
                'https://http2.mlstatic.com/D_NQ_NP_781282-MLB29335745363_022019-O.jpg',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'Camisa Log Horizon',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Mussum Ipsum, cacilds vidis litro abertis.',
                  style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RatingBar.builder(
                      itemSize: 25,
                      initialRating: 4.5,
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
                    Text(
                      '4.5/5.0',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      dropdownColor(),
                      SizedBox(
                        width: 30,
                      ),
                      dropdownSize(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon(Icon(Icons.share)),
                    SizedBox(
                      width: 30,
                    ),
                    icon(Icon(Icons.shopping_cart_outlined)),
                    SizedBox(
                      width: 30,
                    ),
                    icon(Icon(Icons.favorite)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                text('R\$ 42.42'),
              ],
            ),
          ],
        ),
        Positioned(top: 40, left: 0, child: BackButtonWidget()),
      ],
    );
  }

  Widget dropdownSize() {
    return Container(
      height: 60,
      width: 60,
      child: DropdownButton(
        hint: _dropDownValue == null
            ? size('M')
            : size('M'),
        isExpanded: true,
        icon: Container(),
        style: TextStyle(color: Colors.blue),
        items: ['M', 'P', 'PP', 'G', 'GG'].map(
          (val) {
            return DropdownMenuItem<String>(
              value: val,
              child: size(val),
            );
          },
        ).toList(),
        onChanged: (val) {
          setState(
            () {
              //_dropDownValue = val;
            },
          );
        },
      ),
    );
  }

  Widget dropdownColor() {
    return Container(
      height: 60,
      width: 60,
      child: DropdownButton(
        hint: _dropDownValue == null
            ? color(_dropDownValue)
            : color(_dropDownValue),
        isExpanded: true,
        icon: Container(),
        style: TextStyle(color: Colors.blue),
        items: ['#eb3434', '#3465eb', '#e5eb34'].map(
          (val) {
            return DropdownMenuItem<String>(
              value: val,
              child: color(val),
            );
          },
        ).toList(),
        onChanged: (val) {
          setState(
            () {
              _dropDownValue = val;
            },
          );
        },
      ),
    );
  }

  Widget icon(Icon icon) {
    return Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.black),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: icon,
      ),
    );
  }

  Widget size(String text) {
    return Card(
      elevation: 5,
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.black),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Center(child: Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
      ),
    );
  }

  Widget color(String color){
    return Card(
      elevation: 5,
      child: Container(
        color: HexColor(color),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 22),
      ),
    );
  }

  Widget text(String price) {
    return Container(
      width: 300,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45.0),
          side: BorderSide(color: Colors.red),
        ),
        padding: EdgeInsets.all(10),
        color: Color.fromRGBO(251, 80, 59, 0.8),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              price,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(251, 80, 59, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(5),
              child: Text(
                'Comprar Agora',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
