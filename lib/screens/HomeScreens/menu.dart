import 'package:flutter/material.dart';
// import 'package:custom_switch/custom_switch.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/menuItem.dart';

class Menu extends StatefulWidget {
  const Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool vegStatus = false;
  bool eggStatus = false;
  double price = 0;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Text(
                  "MENU",
                  style: TextStyle(
                    fontFamily: "Montserrat-SemiBold",
                    fontSize: 12,
                  ),
                ),
                Divider(
                  thickness: 0.7,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "  Veg Only",
                      style: TextStyle(
                          fontFamily: "Montserrat-SemiBold", fontSize: 12),
                    ),
                    Transform.scale(
                      scale: 0.6,
                      child: Switch(
                        activeColor: Color(0xff70AD27),
                        value: vegStatus,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            vegStatus = value;
                            eggStatus = false;
                          });
                        },
                      ),
                    ),
                    Text(
                      "Includes Egg",
                      style: TextStyle(
                          fontFamily: "Montserrat-SemiBold", fontSize: 12),
                    ),
                    Transform.scale(
                      scale: 0.6,
                      child: Switch(
                        activeColor: Color(0xffF9C112),
                        value: eggStatus,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            eggStatus = value;
                            vegStatus = false;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => print("Tapped Chinese"),
                      child: Text(
                        "CHINESE",
                        style: TextStyle(
                          fontFamily: "Montserrat-SemiBold",
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                MenuItem(),
                MenuItem(),
                MenuItem(),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => print("Tapped Chinese"),
                      child: Text(
                        "CHINESE",
                        style: TextStyle(
                          fontFamily: "Montserrat-SemiBold",
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                 MenuItem(),
                MenuItem(),
                MenuItem(),
                Expanded(
                  flex: 4,
                  child: Container(),
                ),
                Align(
                  child: GestureDetector(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "  1 ITEM",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Montserrat",
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "    150  plus taxes",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Montserrat",
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "VIEW CART ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat",
                                    fontSize: 14),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 30,
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff296693),
                      ),
                      height: 40,
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}




