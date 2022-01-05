import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/crypto_currency.dart';

class CustomDropDown extends StatefulWidget {
  final Set<CryptoCurrency> dropDownList;

  const CustomDropDown({Key? key, required this.dropDownList})
      : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _chosenValue == null
            ? const Color.fromARGB(255, 107, 118, 132)
            : const Color.fromARGB(255, 55, 57, 62),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
            value: _chosenValue,
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.white70,
            ),
            borderRadius: BorderRadius.circular(20),
            style: const TextStyle(
              color: Colors.white70,
            ),
            dropdownColor: const Color.fromARGB(255, 107, 118, 132),
            items: widget.dropDownList.map((CryptoCurrency e) {
              return DropdownMenuItem(
                child: Row(
                  children: [
                    Image(
                      // найти иконку нужного размера и заменить магические числа
                      width: 20,
                      height: 20,
                      image: e.icon,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 5)),
                    Text(e.shortName),
                  ],
                ),
                value: e.shortName,
              );
            }).toList(),
            hint: const Text('Select Token'),
            onChanged: (String? value) {
              setState(() {
                _chosenValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
