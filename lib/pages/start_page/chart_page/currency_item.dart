import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/crypto_currency.dart';

class CurrencyItem extends StatefulWidget {
  final CryptoCurrency currency;
  final int currentIndex;
  final int lastIndex;

  const CurrencyItem({
    Key? key,
    required this.currency,
    required this.currentIndex,
    required this.lastIndex,
  }) : super(key: key);

  @override
  State<CurrencyItem> createState() => _CurrencyItemState();
}

class _CurrencyItemState extends State<CurrencyItem> {
  @override
  void initState() {
    super.initState();
    widget.currency.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: getBoxDecoration(),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 10),
              Image(
                image: widget.currency.icon,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.currency.shortName,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 245, 245, 245),
                          ),
                        ),
                        Text(
                          '\$${widget.currency.price.toString()}',
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
                          widget.currency.name,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 72, 76, 88),
                          ),
                        ),
                        Text(
                          widget.currency.trend.toString() + '%',
                          style: TextStyle(
                            color: widget.currency.trend < 0
                                ? Colors.red[700]
                                : Colors.lightGreen[900],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10),
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
    if (widget.currentIndex == 0) {
      return const BoxDecoration(
        color: Color.fromARGB(255, 27, 29, 33),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      );
    } else if (widget.currentIndex == widget.lastIndex) {
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
