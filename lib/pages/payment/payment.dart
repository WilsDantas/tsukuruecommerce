import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';


import '../../widgets/appBarIcon.dart';

class PaymentPage extends StatefulWidget {
  PaymentPage({Key key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagamento'),
        actions: [AppBarIcon()],
      ),
      body: bodyApp(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/paymentAdd');
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
      ),
    );
  }

  Widget bodyApp() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: 5,
      itemBuilder: (context, index) {
        return CreditCardWidget(
          cardNumber: '5118527299013052',
          expiryDate: '27/01',
          cardHolderName: 'William S Dantas',
          cvvCode: '123',
          showBackView: false,
          height: 175,
          textStyle: TextStyle(color: Colors.yellowAccent),
          width: MediaQuery.of(context).size.width,
          animationDuration: Duration(milliseconds: 1000),
        );
      },
    );
  }
}
