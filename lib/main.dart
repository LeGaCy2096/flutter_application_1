import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/initial_page/initial_page.dart';
import 'package:flutter_application_1/pages/start_page/start_page.dart';
import 'package:flutter_application_1/data/constants.dart' as constants;

void main() => runApp(MaterialApp(
      routes: {
        constants.ROUTE_INITIAL_PAGE: (context) => const InitialPage(),
        constants.ROUTE_START_PAGE: (context) => const StartPage(),
      },
      initialRoute: constants.ROUTE_INITIAL_PAGE,
    ));
