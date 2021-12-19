import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/crypto_currency.dart';
import 'package:flutter_application_1/pages/start_page/chart_page/currency_item.dart';

class Charts extends StatelessWidget {
  final List<CryptoCurrency> currencyList;

  const Charts({Key? key, required this.currencyList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return currencyList.isEmpty
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: ListView.builder(
              addRepaintBoundaries: false,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return CurrencyItem(
                  currency: currencyList[index],
                  index: index,
                  lastIndex: currencyList.length - 1,
                );
              },
              itemCount: currencyList.length,
            ),
          );
  }
}
