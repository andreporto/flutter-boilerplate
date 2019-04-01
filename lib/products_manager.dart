import 'package:flutter/material.dart';
import './products.dart';
import 'dart:math';

class ProductManager extends StatefulWidget {
  final String valorInicial;

  ProductManager(this.valorInicial);

  @override
  State<StatefulWidget> createState() {
    return _ProductState();
  }
}

class _ProductState extends State<ProductManager> {
  List<String> _lista = [];
  var aleatorio = new Random();

  @override
  void initState() {
    super.initState();
    _lista.add(widget.valorInicial);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: RaisedButton(
              child: Text('Add Product'),
              onPressed: () {
                setState(() {
                  _lista.add(aleatorioAte100());
                });
              },
            ),
          ),
        ),
        Products(_lista),
      ],
    );
  }

  String aleatorioAte100() => 'item ' + aleatorio.nextInt(100).toString();
}
