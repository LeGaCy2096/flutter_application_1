import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/currency_item.dart';

class CryptoList extends StatelessWidget {
  var bitcoin = {
    'name': 'Bitcoin',
    'shortName': 'BTC',
    'price': 20000,
    'dynamic': -2.71
  };
  var etherium = {
    'name': 'Etherium',
    'shortName': 'ETH',
    'price': 1230,
    'dynamic': 3.00
  };
  var binance = {
    'name': 'Binance',
    'shortName': 'BNB',
    'price': 20.01,
    'dynamic': 0.02
  };

  List currencies = [];

  CryptoList({Key? key}) : super(key: key) {
    for (int i = 1; i <= 3; i++) {
      currencies.add(bitcoin);
      currencies.add(etherium);
      currencies.add(binance);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(top: 30)),
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Color.fromARGB(255, 25, 27, 31)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(padding: EdgeInsets.all(3)),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Swap',
                    style: TextStyle(color: Colors.grey),
                  )),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Charts',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 33, 36, 41))),
              ),
              const Padding(padding: EdgeInsets.all(3)),
            ],
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 30)),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return CurrencyItem(currencies[index]);
            },
            itemCount: currencies.length,
          ),
        )
      ],
    );
  }
}
