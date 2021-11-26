import 'package:flutter/cupertino.dart';

class CryptoCurrency {
  final String name;
  final String shortName;
  final double price;
  final double trend;
  final AssetImage icon;

  const CryptoCurrency(
      {required this.name,
      required this.shortName,
      required this.price,
      required this.trend,
      required this.icon});
}
