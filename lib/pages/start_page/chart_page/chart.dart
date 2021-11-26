import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/crypto_currency.dart';
import 'package:flutter_application_1/pages/start_page/chart_page/currency_item.dart';

class Charts extends StatelessWidget {
  final List currencyList = [];

  Charts({Key? key}) : super(key: key) {
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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return CurrencyItem(currency: currencyList[index]);
        },
        itemCount: currencyList.length,
      ),
    );
  }
}
