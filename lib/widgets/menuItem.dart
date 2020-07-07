import'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItem extends StatefulWidget {
  //  const MenuItem({Key key}) : super(key: key);
  //  double price = 0;
  // int value = 0;
  final double price = 0;
  // MenuItem(this.price);
     

  // @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
    padding: const EdgeInsets.only(top: 0.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SvgPicture.asset(
                  "assets/images/veg.svg",
                  height: 15,
                ),
                Text(
                  "  VEG NOODLES",
                  style: TextStyle(fontFamily: "Montserrat", fontSize: 10),
                ),
              ],
            ),
            Text(
              "     150 | 20 mins",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 10,
                  color: Colors.black38),
            ),
          ],
        ),
        RawMaterialButton(
          onPressed: addMenu(widget.price),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black26,
              ),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Text(
              "ADD  +",
              style: TextStyle(
                fontSize: 10,
                fontFamily: "Montserrat-SemiBold",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ],
    ),
  ),
    );
  }

    addMenu(double price) {
    // value++;
    setState(() {
      price += 150;
    });
    print("Added");
    //  return price;
  }
}