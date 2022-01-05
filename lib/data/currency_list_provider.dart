import 'dart:math';

import 'package:flutter/material.dart';
import 'crypto_currency.dart';

class CurrencyListProvider {
  final List<CryptoCurrency> currencyList = [];

  // перенес заполнение списка из конструктора что бы использовать задержу от Future
  // и не создавать переменную для хранения списка в start_page
  void fillCurrencyList() {
    AssetImage bitcoinIcon = const AssetImage('assets/bitcoin_icon.png');

    for (int i = 1; i <= 3; i++) {
      CryptoCurrency bitcoin = CryptoCurrency(
        name: 'Bitcoin',
        shortName: 'BTC',
        icon: bitcoinIcon,
        price: getRandomPrice(),
        trend: getRandomTrend(),
      );
      currencyList.add(bitcoin);

      CryptoCurrency etherium = CryptoCurrency(
        name: 'Etherium',
        shortName: 'ETH',
        icon: bitcoinIcon,
        price: getRandomPrice(),
        trend: getRandomTrend(),
      );
      currencyList.add(etherium);

      CryptoCurrency binance = CryptoCurrency(
        name: 'Binance',
        shortName: 'BNB',
        icon: bitcoinIcon,
        price: getRandomPrice(),
        trend: getRandomTrend(),
      );
      currencyList.add(binance);
    }
  }

  Future imitateAPICallDelay() {
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
