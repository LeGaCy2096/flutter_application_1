import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Swap extends StatelessWidget {
  const Swap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          ),
          const Padding(padding: EdgeInsets.all(5)),
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 27, 30, 36),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox getExchangeBox(context) {
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
            Container(
              height: 30,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 33, 36, 41),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Row(
                children: [
                  const Flexible(
                    child: TextField(
                      decoration: InputDecoration(hintText: '0.0'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.all(5)),
            Container(
              height: 30,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 33, 36, 41),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
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
}
