import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/currency_list_provider.dart';
import 'package:flutter_application_1/pages/start_page/chart_page/chart.dart';
import 'package:flutter_application_1/pages/start_page/header.dart';
import 'package:flutter_application_1/pages/start_page/swap_page/swap.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _currentPageIndex = 1;
  PageController? _pageController;
  final CurrencyListProvider currencyProvider = CurrencyListProvider();
  StreamSubscription? _updateCurrenciesListener;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 1,
    );

    currencyProvider.fetchInfo().then((value) {
      currencyProvider.fillCurrencyList();
      setState(() {});
    });

    _updateCurrenciesListener =
        currencyProvider.updateCurrencyList().listen((event) {});
  }

  @override
  void dispose() {
    super.dispose();
    _pageController?.dispose();
    _updateCurrenciesListener?.cancel();
  }

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
                pageController: _pageController,
                pageIndex: _currentPageIndex,
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: [
                    Swap(
                        dropDownElements:
                            currencyProvider.currencyList.toSet()),
                    Charts(currencyList: currencyProvider.currencyList),
                  ],
                  onPageChanged: (pageIndex) {
                    setState(() {
                      _currentPageIndex = pageIndex;
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
