import 'dart:math';

import 'package:flutter/cupertino.dart';

class CryptoCurrency extends ChangeNotifier {
  final String name;
  final String shortName;
  double price = 0;
  double trend = 0;
  final AssetImage icon;

  CryptoCurrency({
    required this.name,
    required this.shortName,
    required this.icon,
  }) {
    price = getRandomPrice();
    trend = getRandomTrend();
  }

  void changeCurrencyCost() {
    price = getRandomPrice();
    trend = getRandomTrend();
    notifyListeners();
  }

  double getRandomPrice() {
    double mainPart = Random().nextInt(100000).toDouble();
    double decimalPart = Random().nextInt(100).toDouble() / 100;
    return mainPart + decimalPart;
  }

  double getRandomTrend() {
    double mainPart = Random().nextInt(1000).toDouble();
    double decimalPart = Random().nextInt(100).toDouble() / 100;
    double price = (mainPart + decimalPart) * (Random().nextBool() ? -1 : 1);
    return price;
  }
}
