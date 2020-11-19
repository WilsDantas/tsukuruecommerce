import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:tsukuru_e_commerce/widgets/appBarIcon.dart';

class PaymentAddPage extends StatefulWidget {
  PaymentAddPage({Key key}) : super(key: key);

  @override
  _PaymentAddPageState createState() => _PaymentAddPageState();
}

class _PaymentAddPageState extends State<PaymentAddPage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Cartão'),
        actions: [AppBarIcon()],
      ),
      body: SingleChildScrollView(child: bodyPage()),
    );
  }

  Widget bodyPage() {
    return Container(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
            ),
            CreditCardForm(
              onCreditCardModelChange: onCreditCardModelChange,
            ),
            _buttonLogout()
          ],
        ),
      ),
    );
  }

  Widget _buttonLogout() {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, '/index');
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          color: Theme.of(context).primaryColor,
        ),
        child: Text(
          'Adicionar',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
