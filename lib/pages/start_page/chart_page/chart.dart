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
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: ListView.builder(
              addRepaintBoundaries: false,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: getBoxDecoration(index, currencyList.length - 1),
                  child: CurrencyItem(
                    currency: currencyList[index],
                  ),
                );
              },
              itemCount: currencyList.length,
            ),
          );
  }

  BoxDecoration? getBoxDecoration(int currentIndex, int lastIndex) {
    if (currentIndex == 0) {
      return const BoxDecoration(
        color: Color.fromARGB(255, 27, 29, 33),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      );
    } else if (currentIndex == lastIndex) {
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
