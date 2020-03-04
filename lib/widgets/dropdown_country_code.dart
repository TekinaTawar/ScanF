import 'package:flutter/material.dart';

class CountryCodeSelector extends StatefulWidget {
  @override
  _CountryCodeSelectorState createState() => _CountryCodeSelectorState();
}

class _CountryCodeSelectorState extends State<CountryCodeSelector> {
  @override
  Widget build(BuildContext context) {
    String _value = '2';
    return DropdownButton(
      
      items: [
        DropdownMenuItem(
          child: Text('+91'),
          value: '1',
        ),
        DropdownMenuItem(
          child: Text('+1'),
          value: '2',
        )
      ],
      onChanged: (value) {
        print(value);
        setState(() {
          _value = value;
        });
      },
      value: _value,
      // isExpanded: true,
    );
  }
}
