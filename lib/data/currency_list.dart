import 'dart:math';

import 'package:flutter/material.dart';
import 'crypto_currency.dart';

class CurrencyList {
  final List<CryptoCurrency> currencyList = [];

  CurrencyList() {
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
}
