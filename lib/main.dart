import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/initial_page/initial_page.dart';
import 'package:flutter_application_1/pages/start_page/start_page.dart';

void main() => runApp(MaterialApp(
      routes: {
        '/': (context) => const InitialPage(),
        '/start_page': (context) => StartPage(),
      },
      initialRoute: '/',
    ));
