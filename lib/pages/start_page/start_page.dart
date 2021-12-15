import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/crypto_currency.dart';
import 'package:flutter_application_1/data/currency_list.dart';
import 'package:flutter_application_1/pages/start_page/chart_page/chart.dart';
import 'package:flutter_application_1/pages/start_page/header.dart';
import 'package:flutter_application_1/pages/start_page/swap_page/swap.dart';

class StartPage extends StatefulWidget {
  final List<CryptoCurrency> currencyList = [];
  int? currentPage = 1;
  PageController? controller;

  StartPage({Key? key}) : super(key: key) {
    currencyList.addAll(CurrencyList().currencyList);
    controller = PageController(
      keepPage: true,
      initialPage: 1,
    );
  }

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
              Header(
                pageController: widget.controller,
                pageIndex: widget.currentPage,
              ),
              Expanded(
                child: PageView(
                  controller: widget.controller,
                  children: [
                    Swap(currencyList: widget.currencyList),
                    Charts(currencyList: widget.currencyList),
                  ],
                  onPageChanged: (pageIndex) {
                    setState(() {
                      widget.currentPage = pageIndex;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
