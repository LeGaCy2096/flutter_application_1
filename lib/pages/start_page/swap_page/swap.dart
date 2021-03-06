import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/crypto_currency.dart';
import 'package:flutter_application_1/pages/start_page/swap_page/custom_drop_down.dart';

class Swap extends StatefulWidget {
  final Set<CryptoCurrency> dropDownElements;

  const Swap({Key? key, required this.dropDownElements}) : super(key: key);

  @override
  State<Swap> createState() => _SwapState();
}

class _SwapState extends State<Swap> {
  final double textContainerHeight = 40;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              getExchangeBox(context),
              const SizedBox(height: 20),
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
              const SizedBox(height: 10),
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
              const SizedBox(height: 10),
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
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 27, 29, 33),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          getExchangeString(),
          const SizedBox(height: 10),
          getExchangeString(),
          const SizedBox(height: 10),
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
            const Flexible(
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
            CustomDropDown(
              dropDownList: widget.dropDownElements,
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
          const SizedBox(height: 5),
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
