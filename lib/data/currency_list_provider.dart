import 'package:flutter/material.dart';
import 'crypto_currency.dart';

class CurrencyListProvider {
  final List<CryptoCurrency> currencyList = [];

  CurrencyListProvider() {
    AssetImage bitcoinIcon = const AssetImage('assets/bitcoin_icon.png');

    for (int i = 1; i <= 3; i++) {
      CryptoCurrency bitcoin = CryptoCurrency(
        name: 'Bitcoin',
        shortName: 'BTC',
        icon: bitcoinIcon,
      );
      currencyList.add(bitcoin);

      CryptoCurrency etherium =
          CryptoCurrency(name: 'Etherium', shortName: 'ETH', icon: bitcoinIcon);
      currencyList.add(etherium);

      CryptoCurrency binance = CryptoCurrency(
        name: 'Binance',
        shortName: 'BNB',
        icon: bitcoinIcon,
      );
      currencyList.add(binance);
    }
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
        item.changeCurrencyCost();
      }
    }
  }
}
