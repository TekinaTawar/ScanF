import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final TextInputType inputType;
  CustomTextField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
        hintText: hintText,
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.grey[200],
      ),
      obscureText: isPassword,
      validator: validator,
      onSaved: onSaved,
      keyboardType: inputType,
    );
  }
}
