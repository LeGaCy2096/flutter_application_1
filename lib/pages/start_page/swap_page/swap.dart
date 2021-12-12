import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/crypto_currency.dart';
import 'package:flutter_application_1/data/currency_list.dart';

class Swap extends StatefulWidget {
  const Swap({Key? key}) : super(key: key);

  @override
  State<Swap> createState() => _SwapState();
}

class _SwapState extends State<Swap> {
  final double textContainerHeight = 40;
  final List<CryptoCurrency> dropDownList = [];
  String? _chosenValue = 'BTC';

  _SwapState() {
    // список используется для выпадающего списка, а в нем должнры быть только уникальные елементы
    dropDownList.addAll(CurrencyList().currencyList.toSet());
    _chosenValue = dropDownList.first.shortName;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              getExchangeBox(context),
              const Padding(padding: EdgeInsets.all(10)),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  'Overview',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(5)),
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 36, 78, 239),
                      Color.fromARGB(255, 209, 107, 142)
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: getCardContent(
                    'Learn about trading now ↗',
                    'Check out our v2 update for new looks and new way to trade easily',
                    const Color.fromARGB(255, 179, 184, 207)),
              ),
              const Padding(padding: EdgeInsets.all(5)),
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 27, 30, 36),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: getCardContent(
                    'Top pools ↗',
                    'Explore popular pools on binomo. \n'
                        'Easy way to track your crypto currency',
                    const Color.fromARGB(255, 122, 124, 128)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getExchangeBox(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 27, 29, 33),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            getExchangeString(),
            const Padding(padding: EdgeInsets.all(5)),
            getExchangeString(),
            const Padding(padding: EdgeInsets.all(5)),
            Container(
              width: double.infinity,
              height: 30,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 88, 154, 193),
                    Color.fromARGB(255, 50, 81, 170)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Connect Wallet',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getExchangeString() {
    return Container(
      height: textContainerHeight,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 33, 36, 41),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: '0.0',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 77, 81, 94),
                  ),
                ),
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 107, 118, 132),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: DropdownButtonHideUnderline(
                child: ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton(
                    value: _chosenValue,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white70,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    style: const TextStyle(
                      color: Colors.white70,
                    ),
                    dropdownColor: const Color.fromARGB(255, 107, 118, 132),
                    items: dropDownList.map((CryptoCurrency e) {
                      return DropdownMenuItem(
                        child: Row(
                          children: [
                            Image(
                              // найти иконку нужного размера и заменить магические числа
                              width: 20,
                              height: 20,
                              image: e.icon,
                            ),
                            const Padding(padding: EdgeInsets.only(left: 5)),
                            Text(e.shortName),
                          ],
                        ),
                        value: e.shortName,
                      );
                    }).toList(),
                    hint: const Text('Select Token'),
                    onChanged: (String? value) {
                      setState(() {
                        _chosenValue = value;
                      });
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getCardContent(
      String topic, String description, Color descriptionColor) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            topic,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 5)),
          Text(
            description,
            style: TextStyle(
              color: descriptionColor,
            ),
          ),
        ],
      ),
    );
  }
}
