import 'package:flutter/cupertino.dart';

class CryptoCurrency extends ChangeNotifier {
  final String name;
  final String shortName;
  double price = 0;
  double trend = 0;
  final AssetImage icon;

  CryptoCurrency(
      {required this.name,
      required this.shortName,
      required this.icon,
      required this.price,
      required this.trend});

  void setCurrencyCost(price, trend) {
    this.price = price;
    this.trend = trend;
    notifyListeners();
  }
}
