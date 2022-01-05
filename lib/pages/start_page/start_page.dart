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
  int currentPageIndex = 1;
  // pageController лучше проинициализировать здесь или в initState?
  // надо ли в названии переменной указывать для какого экрана он управляет страницами
  PageController pageController = PageController(initialPage: 1);
  // тут мне на ум приходит только название переменной CurrencyListProvider
  final CurrencyListProvider provider = CurrencyListProvider();
  StreamSubscription? updateCurrenciesListener;

  @override
  void initState() {
    super.initState();
    /*pageController = PageController(
      initialPage: 1,
    );*/

    provider.imitateAPICallDelay().then((value) {
      provider.fillCurrencyList();
      setState(() {});
    });

    // есть какие-то правила для наименование listener?
    updateCurrenciesListener = provider.updateCurrencyList().listen((event) {});
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
    updateCurrenciesListener?.cancel();
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
              // если надо изменить название для контроллера на этой странице, то и в Header тоже надо поменять
              Header(
                pageController: pageController,
                pageIndex: currentPageIndex,
              ),
              Expanded(
                child: PageView(
                  controller: pageController,
                  children: [
                    Swap(dropDownElements: provider.currencyList.toSet()),
                    // здесь лучше передать provider или список валют?
                    Charts(currencyList: provider.currencyList),
                  ],
                  onPageChanged: (pageIndex) {
                    setState(() {
                      currentPageIndex = pageIndex;
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
