import 'dart:math';

import 'package:flutter/material.dart';
import 'crypto_currency.dart';

class CurrencyListProvider {
  final List<CryptoCurrency> currencyList = [];

  void fillCurrencyList() {
    AssetImage bitcoinIcon = const AssetImage('assets/bitcoin_icon.png');

    for (int i = 1; i <= 3; i++) {
      CryptoCurrency bitcoin = CryptoCurrency(
          getRandomPrice(), getRandomTrend(),
          name: 'Bitcoin', shortName: 'BTC', icon: bitcoinIcon);
      currencyList.add(bitcoin);

      CryptoCurrency etherium = CryptoCurrency(
          getRandomPrice(), getRandomTrend(),
          name: 'Etherium', shortName: 'ETH', icon: bitcoinIcon);
      currencyList.add(etherium);

      CryptoCurrency binance = CryptoCurrency(
          getRandomPrice(), getRandomTrend(),
          name: 'Binance', shortName: 'BNB', icon: bitcoinIcon);
      currencyList.add(binance);
    }
  }

  Future fetchInfo() {
    return Future.delayed(
      const Duration(seconds: 2),
    );
  }

  Stream<List<CryptoCurrency>> updateCurrencyList() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 3));
      for (var item in currencyList) {
        item.setCurrencyCost(getRandomPrice(), getRandomTrend());
      }
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
}
