import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

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
                ),
              ),
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
      ],
    );
  }
}
