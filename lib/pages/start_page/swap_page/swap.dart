import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Swap extends StatelessWidget {
  const Swap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Container(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 27, 29, 33),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 33, 36, 41),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5)),
                SizedBox(
                  height: 30,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 33, 36, 41),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5)),
                SizedBox(
                  child: Container(
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
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
