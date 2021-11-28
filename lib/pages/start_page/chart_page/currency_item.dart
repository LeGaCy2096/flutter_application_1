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
          const Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 10)),
              Image(
                image: currency.icon,
              ),
              const Padding(padding: EdgeInsets.only(left: 10)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        currency.shortName,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 245, 245, 245),
                        ),
                      ),
                      Text(
                        '${String.fromCharCode(0x0024)}${currency.price.toString()}',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 245, 245, 245),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(currency.name),
                      Text(
                        currency.trend.toString(),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            height: 3,
            color: const Color.fromARGB(255, 29, 31, 36),
          ),
        ],
      ),
    );
  }
}
