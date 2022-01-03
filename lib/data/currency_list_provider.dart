import 'dart:math';

import 'package:flutter/material.dart';
import 'crypto_currency.dart';

class CurrencyListProvider extends ChangeNotifier {
  final List<CryptoCurrency> currencyList = [];

  CurrencyListProvider() {
    AssetImage bitcoinIcon = const AssetImage('assets/bitcoin_icon.png');

    for (int i = 1; i <= 3; i++) {
      CryptoCurrency bitcoin = CryptoCurrency(
        name: 'Bitcoin',
        shortName: 'BTC',
        price: getRandomPrice(),
        trend: getRandomTrend(),
        icon: bitcoinIcon,
      );
      currencyList.add(bitcoin);

      CryptoCurrency etherium = CryptoCurrency(
          name: 'Etherium',
          shortName: 'ETH',
          price: getRandomPrice(),
          trend: getRandomTrend(),
          icon: bitcoinIcon);
      currencyList.add(etherium);

      CryptoCurrency binance = CryptoCurrency(
        name: 'Binance',
        shortName: 'BNB',
        price: getRandomPrice(),
        trend: getRandomTrend(),
        icon: bitcoinIcon,
      );
      currencyList.add(binance);
    }
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

  Future imitateStartAPICall() {
    return Future.delayed(
      const Duration(seconds: 2),
    );
  }

  Stream<List<CryptoCurrency>> updateCurrencyList() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 3));
      for (var item in currencyList) {
        item.price = getRandomPrice();
        item.trend = getRandomTrend();
      }
      notifyListeners();
    }
  }
}
