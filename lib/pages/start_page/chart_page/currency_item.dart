import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/crypto_currency.dart';

class CurrencyItem extends StatelessWidget {
  final CryptoCurrency currency;

  const CurrencyItem({Key? key, required this.currency}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 27, 29, 33),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(5)),
            Row(
              children: [
                const Padding(padding: EdgeInsets.all(5)),
                Column(
                  children: [
                    Image(
                      image: currency.icon,
                      width: 32,
                      height: 32,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(currency.shortName),
                    Text(currency.name),
                  ],
                ),
                Column(
                  children: [
                    Text(currency.price.toString()),
                    Text(currency.trend.toString()),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(5)),
              ],
            ),
            const Padding(padding: EdgeInsets.all(5)),
          ],
        ));
  }
}
