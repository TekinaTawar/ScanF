import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  @required final String text;
  InputBox({this.text});
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Container(
        // margin: EdgeInsets.all(5),
        height: height * 0.06,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: TextField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Color(0xff2970fe)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Color(0xfffeb729), width: 2),
              ),
              labelText: text,
              labelStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.38))),
        ),
      );
  }
}
