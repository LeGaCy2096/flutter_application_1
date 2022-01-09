import 'package:flutter/cupertino.dart';

class CryptoCurrency extends ChangeNotifier {
  final String name;
  final String shortName;
  double _price = 0;
  double _trend = 0;
  final AssetImage icon;

  CryptoCurrency(double price, double trend,
      {required this.name, required this.shortName, required this.icon}) {
    _price = price;
    _trend = trend;
  }

  void setCurrencyCost(price, trend) {
    _price = price;
    _trend = trend;
    notifyListeners();
  }

  double get price => _price;
  double get trend => _trend;
}
