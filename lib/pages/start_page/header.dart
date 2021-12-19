import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final PageController? pageController;
  final int? pageIndex;

  const Header(
      {Key? key, required this.pageController, required this.pageIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Color.fromARGB(255, 25, 27, 31)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(padding: EdgeInsets.all(3)),
            getPageButton('Swap', 0),
            getPageButton('Charts', 1),
            const Padding(padding: EdgeInsets.all(3)),
          ],
        ),
      ),
    );
  }

  Widget getPageButton(String buttonText, int index) {
    return TextButton(
      onPressed: () {
        pageController?.jumpToPage(index);
      },
      child: Text(
        buttonText,
        style: pageIndex == index
            ? const TextStyle(color: Colors.white)
            : const TextStyle(color: Colors.grey),
      ),
      style: pageIndex == index
          ? ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 33, 36, 41)))
          : const ButtonStyle(),
    );
  }
}
