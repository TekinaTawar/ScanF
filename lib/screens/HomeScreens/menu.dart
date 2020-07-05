import 'package:flutter/material.dart';
// import 'package:custom_switch/custom_switch.dart';

class Menu extends StatefulWidget {
  const Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool vegStatus = false;
  bool eggStatus = false;
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
                    fontSize: 14,
                  ),
                ),
                Divider(
                  thickness: 0.7,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Veg Only",
                      style: TextStyle(
                          fontFamily: "Montserrat-SemiBold", fontSize: 12),
                    ),
                    Transform.scale(
                      scale: 0.6,
                      child: Switch(
                        activeColor: Color(0xff70AD47),
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
                    Text("Includes Egg",style: TextStyle(
                          fontFamily: "Montserrat-SemiBold", fontSize: 12),),
                    Transform.scale(
                      scale: 0.6,
                      child: Switch(
                        activeColor: Color(0xffF9C114),
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
                new DropdownButton<String>(
                  items: <String>['A', 'B', 'C', 'D'].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
