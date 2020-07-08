import 'package:ScanF/screens/HomeScreens/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Random extends StatefulWidget {
  const Random({Key key}) : super(key: key);

  @override
  _RandomState createState() => _RandomState();
}

class _RandomState extends State<Random> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      if(index==1 && _selectedIndex!=index){
        Navigator.pop(context);
        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Random()));
      }
      if(index==0 && _selectedIndex!=index){
        Navigator.pop(context);
        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LandingPage()));
      }
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/search.svg", height: 20),
                title: Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/durbin.svg", height: 18),
                title: Text(
                  'Discover',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/meal.svg", height: 22),
                title: Text(
                  'Orders',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/like.svg", height: 23),
                title: Text(
                  'Preferences',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/images/location.svg",
                              height: 20,
                              width: 22,
                            ),
                            Text(
                              " MANALI",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          " MALL ROAD, MANALI",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(
                        "assets/images/Group 10.svg",
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.7,
                ),
                Text(
                  "FAMOUS DISHES IN MANALI",
                  style: TextStyle(
                    fontFamily: "Montserrat-SemiBold",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height:3),
                Text(
                  "1. RIVER TROUT",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 14,
                  ),
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical:8.0),
                    child: Image.asset(
                      "assets/images/dosa.jpg",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                SizedBox(height:3),
                Text("There is no way you can visit Manali and not feast on",
                    style: TextStyle(fontSize: 13, fontFamily: "Montserrat")),
                SizedBox(height: 5),
                Text("the local favourite River Trout preparations made",
                    style: TextStyle(fontSize: 13, fontFamily: "Montserrat")),
                SizedBox(height: 5),
                Text("with local flavours. Generally served along with …​",
                    style: TextStyle(fontSize: 13, fontFamily: "Montserrat")),
                    SizedBox(height:3),
                Divider(
                  thickness: 0.7,
                ),
                SizedBox(height:3),
                Text(
                  "FOODY HOTSPOT IN MANALI",
                  style: TextStyle(
                    fontFamily: "Montserrat-SemiBold",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height:3),
                Text(
                  "1. MALL ROAD",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 14,
                  ),
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical:8.0),
                    child: Image.asset(
                      "assets/images/dosa.jpg",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
