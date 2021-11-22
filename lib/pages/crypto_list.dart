import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CryptoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.red,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(onPressed: () {}, child: Text('Swap')),
              TextButton(onPressed: () {}, child: Text('Charts'))
            ],
          ),
        ),
      ],
    );
  }
}
