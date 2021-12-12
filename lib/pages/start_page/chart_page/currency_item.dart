import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/crypto_currency.dart';

class CurrencyItem extends StatelessWidget {
  final CryptoCurrency currency;
  final int index;
  final int lastIndex;

  const CurrencyItem({
    Key? key,
    required this.currency,
    required this.index,
    required this.lastIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: getBoxDecoration(),
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
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          currency.shortName,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 245, 245, 245),
                          ),
                        ),
                        Text(
                          '\$${currency.price.toString()}',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 245, 245, 245),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          currency.name,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 72, 76, 88),
                          ),
                        ),
                        Text(
                          currency.trend.toString() + '%',
                          style: TextStyle(
                            color: currency.trend < 0
                                ? Colors.red[700]
                                : Colors.lightGreen[900],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 10)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 3,
              color: const Color.fromARGB(255, 29, 31, 36),
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration? getBoxDecoration() {
    if (index == 0) {
      return const BoxDecoration(
        color: Color.fromARGB(255, 27, 29, 33),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      );
    } else if (index == lastIndex) {
      return const BoxDecoration(
        color: Color.fromARGB(255, 27, 29, 33),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      );
    } else {
      return const BoxDecoration(
        color: Color.fromARGB(255, 27, 29, 33),
      );
    }
  }
}
