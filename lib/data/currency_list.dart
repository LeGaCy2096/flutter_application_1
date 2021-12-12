import 'package:flutter/material.dart';
import 'crypto_currency.dart';

class CurrencyList {
  final List<CryptoCurrency> currencyList = [];

  CurrencyList() {
    AssetImage bitcoinIcon = const AssetImage('assets/bitcoin_icon.png');
    CryptoCurrency bitcoin = CryptoCurrency(
      name: 'Bitcoin',
      shortName: 'BTC',
      price: 20000,
      trend: -2.71,
      icon: bitcoinIcon,
    );
    CryptoCurrency etherium = CryptoCurrency(
        name: 'Etherium',
        shortName: 'ETH',
        price: 1230,
        trend: 3.00,
        icon: bitcoinIcon);
    CryptoCurrency binance = CryptoCurrency(
      name: 'Binance',
      shortName: 'BNB',
      price: 20.01,
      trend: 0.02,
      icon: bitcoinIcon,
    );

    for (int i = 1; i <= 3; i++) {
      currencyList.add(bitcoin);
      currencyList.add(etherium);
      currencyList.add(binance);
    }
  }
}
