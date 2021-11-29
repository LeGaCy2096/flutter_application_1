import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/start_page/chart_page/chart.dart';
import 'package:flutter_application_1/pages/start_page/header.dart';
import 'package:flutter_application_1/pages/start_page/swap_page/swap.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  PageController controller = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(31, 35, 37, 1),
                Color.fromRGBO(31, 31, 36, 1)
              ],
              begin: Alignment(0, 0.2),
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              const Header(),
              Expanded(
                child: PageView(
                  controller: controller,
                  children: [
                    const Swap(),
                    Charts(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
