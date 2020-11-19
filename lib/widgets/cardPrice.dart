import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardPrice extends StatelessWidget {
  double _total;
  bool _detalhes;

  CardPrice(this._total, this._detalhes);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Card(
        elevation: 2.2,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _detalhes
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Detalhes do Preço',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(height: 10),
                      ],
                    )
                  : Container(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textOutPut('Subtotal'),
                  textOutPut('R\$ 500.00'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textOutPut('Frete'),
                  textOutPut('R\$ 200.00'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textOutPut('Desconto'),
                  textOutPut('R\$ 100.00'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'R\$ ${_total.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              _finishButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget textOutPut(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 15),
    );
  }

  Widget _finishButton(context) {
    return GestureDetector(
      onTap: () {
        // TODO FINISH PURCHASE BUTTON
      },
          child: Container(
        height: 45,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                color: Theme.of(context).primaryColor,
                alignment: Alignment.center,
                child: Text(
                  'R\$ 500.00',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Theme.of(context).primaryColor,
                alignment: Alignment.center,
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
