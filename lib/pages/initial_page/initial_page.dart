import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants.dart' as constants;

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          height: double.infinity,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to the test application',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 30,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 88, 154, 193),
                      Color.fromARGB(255, 50, 81, 170)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      constants.ROUTE_START_PAGE,
                    );
                  },
                  child: const Text(
                    'Start',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
