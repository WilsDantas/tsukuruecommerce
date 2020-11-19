import 'package:flutter/material.dart';

class HistoricPage extends StatefulWidget {
  HistoricPage({Key key}) : super(key: key);

  @override
  _HistoricPageState createState() => _HistoricPageState();
}

class _HistoricPageState extends State<HistoricPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Histórico de Compras'),
        centerTitle: true,
      ),
      body: bodyPage(),
    );
  }

  Widget bodyPage() {
    return Container(child: ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return cardHistoric();
      },
    ));
  }

  Widget cardHistoric() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Card(
        elevation: 10,
        child: Column(
          children: [
            cardHistoricData(),
            cardImage(),
          ],
        ),
      ),
    );
  }

  Widget cardHistoricData() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Pedido: 4e7a2a9eda57b',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'R\$ 42.42',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Text(
                '27 Jan 2020, 15:42',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Container(
            color: Colors.blue[200],
            padding: EdgeInsets.all(5),
            child: Text(
              'Em Progresso',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget cardImage() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: Image.network(
                'https://http2.mlstatic.com/D_NQ_NP_781282-MLB29335745363_022019-O.jpg',
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Image.network(
                'https://http2.mlstatic.com/D_NQ_NP_781282-MLB29335745363_022019-O.jpg',
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              height: 120,
              color: Colors.grey[300],
              child: Center(
                child: Text(
                  '+2',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
