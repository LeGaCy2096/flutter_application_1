import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(31, 35, 37, 1),
                Color.fromRGBO(31, 31, 36, 1)
              ],
              begin: Alignment(0, 0.8),
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                  left: 15,
                  right: 15,
                ),
                color: Color.fromRGBO(25, 27, 31, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Swap'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Charts'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('News'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const [
                    Image(image: AssetImage('assets/image3.png')),
                    Image(image: AssetImage('assets/image3.png')),
                    Image(image: AssetImage('assets/image3.png')),
                  ],
                ),
              ),
              Text('Top Tokens'),
            ],
          ),
        ),
      ),
    );
  }
}
