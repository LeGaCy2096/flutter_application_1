import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/initial_page/initial_page.dart';
import 'package:flutter_application_1/pages/start_page/start_page.dart';
import 'package:flutter_application_1/data/constants.dart' as constants;

void main() => runApp(MaterialApp(
      routes: {
        constants.routeInitialPage: (context) => const InitialPage(),
        constants.routeStartPage: (context) => const StartPage(),
      },
      initialRoute: constants.routeInitialPage,
    ));
