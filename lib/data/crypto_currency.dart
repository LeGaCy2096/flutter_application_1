import 'package:flutter/cupertino.dart';

class CryptoCurrency {
  final String name;
  final String shortName;
  double price;
  double trend;
  final AssetImage icon;

  CryptoCurrency(
      {required this.name,
      required this.shortName,
      required this.price,
      required this.trend,
      required this.icon});
}
