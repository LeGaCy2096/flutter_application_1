import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyItem extends StatelessWidget {
  String currencyName = '';
  String shortName = '';
  double price = 0;
  String dynamic = '0.00';

  CurrencyItem(Map data, {Key? key}) : super(key: key) {
    currencyName = data['name'];
    shortName = data['shortName'];
    //price = data['price'];
    if (data['dynamic'] > 0) {
      dynamic = '+${data['dynamic']}%';
    } else {
      dynamic = '${data['dynamic']}%';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 27, 29, 33),
      child: Text('$dynamic'),
    );
  }
}
