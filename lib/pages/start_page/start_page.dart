import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/crypto_currency.dart';
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
  int? currentPageIndex = 1;
  PageController? pageController;
  final List<CryptoCurrency> currencyList = [];
  final CurrencyListProvider provider = CurrencyListProvider();

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      keepPage: true,
      initialPage: 1,
    );

    provider.imitateStartAPICall().then((value) {
      // изменить название переменных
      currencyList.addAll(provider.currencyList);
      setState(() {});
    });

    //поместить listener в переменную и отменить подписку в dispose
    provider.updateCurrencyList().listen((event) {});
  }

  @override
  void dispose() {
    super.dispose();
    pageController?.dispose();
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
                pageController: pageController,
                pageIndex: currentPageIndex,
              ),
              Expanded(
                child: PageView(
                  controller: pageController,
                  children: [
                    Swap(currencyList: currencyList),
                    Charts(currencyList: currencyList),
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
