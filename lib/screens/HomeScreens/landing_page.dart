import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 0.2;
    return Scaffold(
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
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (_) {},
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
          child: SingleChildScrollView(
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
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 15),
                  height: 35,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        icon: SvgPicture.asset("assets/images/search_ultra.svg",
                            height: 20, width: 20),
                        onPressed: () => {},
                      ),
                      hintText: "Search by dish, cuisine, etc.",
                      hintStyle: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
                Container(
                  // color: Colors.amber,
                  // height: MediaQuery.of(context).size.height * 0.15,
                  height:110,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 0, bottom: 8),
                            child: Text(
                              "SEARCH ALONG ROUTE",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat",
                                  fontSize: 15),
                            ),
                          ),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SvgPicture.asset("assets/images/loc_des.svg",
                                  width: 20),
                              Column(
                                children: <Widget>[
                                  Container(
                                    // color:Colors.blue,
                                    margin:
                                        EdgeInsets.only(bottom: 10, left: 5),
                                    // height: MediaQuery.of(context).size.height *
                                    //     0.035,
                                    height:27,
                                    width:
                                        MediaQuery.of(context).size.width * .4,
                                    child: TextFormField(
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      textAlign: TextAlign.left,
                                      decoration: InputDecoration(
                                        hintText: "Your Location",
                                        hintStyle: TextStyle(
                                            fontSize: 11,
                                            color: Color.fromRGBO(0, 0, 0, 0.3),
                                            fontWeight: FontWeight.w500),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // color:Colors.blue,
                                    margin: EdgeInsets.only(top: 10, left: 5),
                                    // height: MediaQuery.of(context).size.height *
                                    //     0.035,
                                    height:27,
                                    width:
                                        MediaQuery.of(context).size.width * .4,
                                    child: TextFormField(
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      textAlign: TextAlign.left,
                                      decoration: InputDecoration(
                                        hintText: "Choose Destination",
                                        hintStyle: TextStyle(
                                            fontSize: 11,
                                            color: Color.fromRGBO(0, 0, 0, 0.3),
                                            fontWeight: FontWeight.w500),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/car.jpg",
                        alignment: Alignment.bottomCenter,
                      
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 3.5,
                  color: Color.fromRGBO(128, 128, 128, 0.07),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0,top:5),
                  child: Align(
                    child: Text(
                      "QUICK LINKS",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: cardWidth,
                        width: cardWidth,
                        child: Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              print('Card tapped.');
                            },
                            child: Text(
                              "TEA & COFFEE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff2685C9),
                        ),
                      ),
                      Container(
                        height: cardWidth,
                        width: cardWidth,
                        child: Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              print('Card tapped.');
                            },
                            child: Text(
                              "STREET FOOD",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffD452A8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                     

                      Container(
                        height: cardWidth,
                        width: cardWidth,
                        child: Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              print('Card tapped.');
                            },
                            child: Text(
                              "PURE \n VEG",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff47CC5E),
                        ),
                      ),

                     
                       
                         Container(
                           height: cardWidth,
                        width: cardWidth,
                          child: Align(
                            alignment: Alignment.center,
                            child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () {
                                print('Card tapped.');
                              },
                              child: Text(
                                "LOCAL DISHES",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFF5226),
                        ),
                          
                         
                        ),
                      
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8,bottom:4),
                  child: Divider(
                    thickness: 3.5,
                    color: Color.fromRGBO(128, 128, 128, 0.07),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Text(
                      "NEARBY RESTAURANTS",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  height: 215,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 130,
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              height: 130,
                              width: (MediaQuery.of(context).size.width * 0.5) +
                                  20,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  right: 5.0,
                                  top: 5,
                                  bottom: 5,
                                ),
                                child: Image.asset(
                                  "assets/images/sherpunjab.jpeg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 130,
                              width: (MediaQuery.of(context).size.width * 0.5) -
                                  40,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 32.5,
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: (MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5) -
                                              80,
                                          height: 32.5,
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 5),
                                                height: 2.5,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff24BE9B),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.5),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 4.3 /
                                                        5 *
                                                        ((MediaQuery.of(context)
                                                                    .size
                                                                    .width *
                                                                0.5) -
                                                            105)),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  '4.3',
                                                  style: TextStyle(fontSize: 7),
                                                ),
                                                height: 10,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffFAD350),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                              ),
                                              Positioned(
                                                top: 21,
                                                left: 5,
                                                child: Text(
                                                  'Taste Score',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily:
                                                        "Montserrat-Medium",
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            width: 40,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  '4.3',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff705123),
                                                  ),
                                                ),
                                                Text(
                                                  '(100+)',
                                                  style: TextStyle(
                                                    fontFamily:
                                                        "Montserrat-Medium",
                                                    fontSize: 10,
                                                    color: Color(0xff705123),
                                                  ),
                                                )
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 32.5,
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: (MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5) -
                                              80,
                                          height: 32.5,
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 5),
                                                height: 2.5,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff24BE9B),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.5),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 4.5 /
                                                        5 *
                                                        ((MediaQuery.of(context)
                                                                    .size
                                                                    .width *
                                                                0.5) -
                                                            105)),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  '4.5',
                                                  style: TextStyle(fontSize: 7),
                                                ),
                                                height: 10,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffFAD350),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                              ),
                                              Positioned(
                                                top: 21,
                                                left: 5,
                                                child: Text(
                                                  'Quantity Score',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily:
                                                        "Montserrat-Medium",
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            width: 40,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  '4.5',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff705123),
                                                  ),
                                                ),
                                                Text(
                                                  '(95)',
                                                  style: TextStyle(
                                                    fontFamily:
                                                        "Montserrat-Medium",
                                                    fontSize: 10,
                                                    color: Color(0xff705123),
                                                  ),
                                                )
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 32.5,
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: (MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5) -
                                              80,
                                          height: 32.5,
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 5),
                                                height: 2.5,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff24BE9B),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.5),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 10 /
                                                        60 *
                                                        ((MediaQuery.of(context)
                                                                    .size
                                                                    .width *
                                                                0.5) -
                                                            105)),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  '10 m',
                                                  style: TextStyle(fontSize: 7),
                                                ),
                                                height: 10,
                                                width: 22,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffFAD350),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                              ),
                                              Positioned(
                                                top: 21,
                                                left: 5,
                                                child: Text(
                                                  'Serving Time',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily:
                                                        "Montserrat-Medium",
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            width: 40,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                Text(
                                                  '10m',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff705123),
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 32.5,
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "   Local Speciality",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily:
                                                    "Montserrat-SemiBold"),
                                          ),
                                          SvgPicture.asset(
                                            "assets/images/local_speciality.svg",
                                            height: 17,
                                          ),
                                        ],
                                      ),
                                      margin: EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(11.25),
                                        color: Color(0xfffad350),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 85,
                        // color: Colors.grey,
                        child: Row(children: <Widget>[
                          SizedBox(
                            width:
                                (MediaQuery.of(context).size.width * 0.5) + 20,
                            // color: Colors.deepPurple,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Sher-E-Punjab   ",
                                      style: TextStyle(
                                        fontFamily: "Montserrat-Medium",
                                        fontSize: 14,
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      "assets/images/veg.svg",
                                      height: 15,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    SvgPicture.asset(
                                      "assets/images/non-veg.svg",
                                      height: 15,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "North Indian, Chinese, South Indian",
                                  style: TextStyle(
                                    wordSpacing: 1,
                                    fontSize: 10,
                                    fontFamily: "Montserrat-Medium",
                                    color: Color(0xff7f7f7f),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Open Hours : 9 am - 11 pm ■  Since 1990​​",
                                  style: TextStyle(
                                    wordSpacing: 1,
                                    fontSize: 10,
                                    fontFamily: "Montserrat-Medium",
                                    color: Color(0xff7f7f7f),
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  "10 mins away |  ₹ 250 for two​",
                                  style: TextStyle(
                                    wordSpacing: 1,
                                    fontSize: 10,
                                    fontFamily: "Montserrat-Medium",
                                    color: Color(0xff7f7f7f),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width:
                                (MediaQuery.of(context).size.width * 0.5) - 40,
                            // color: Colors.red,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: ((MediaQuery.of(context).size.width *
                                              0.5) -
                                          40) *
                                      0.5,
                                  // color: Colors.lime,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      SizedBox(height: 17),
                                      SvgPicture.asset(
                                        "assets/images/google_map.svg",
                                        height: 45,
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        "Locate",
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontFamily: "Montserrat-Medium",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: ((MediaQuery.of(context).size.width *
                                              0.5) -
                                          40) *
                                      0.5,
                                  // color: Colors.lime,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      SizedBox(height: 17),
                                      // SvgPicture.asset(
                                      //   "assets/images/google_map.svg",
                                      //   height: 45,
                                      // ),
                                      Icon(Icons.shopping_cart, size: 45),
                                      SizedBox(height: 2),
                                      Text(
                                        "Place Order",
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontFamily: "Montserrat-Medium",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  height: 215,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 130,
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              height: 130,
                              width: (MediaQuery.of(context).size.width * 0.5) +
                                  20,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  right: 5.0,
                                  top: 5,
                                  bottom: 5,
                                ),
                                child: Image.asset(
                                  "assets/images/sherpunjab.jpeg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 130,
                              width: (MediaQuery.of(context).size.width * 0.5) -
                                  40,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 32.5,
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: (MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5) -
                                              80,
                                          height: 32.5,
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 5),
                                                height: 2.5,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff24BE9B),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.5),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 4.3 /
                                                        5 *
                                                        ((MediaQuery.of(context)
                                                                    .size
                                                                    .width *
                                                                0.5) -
                                                            105)),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  '4.3',
                                                  style: TextStyle(fontSize: 7),
                                                ),
                                                height: 10,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffFAD350),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                              ),
                                              Positioned(
                                                top: 21,
                                                left: 5,
                                                child: Text(
                                                  'Taste Score',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily:
                                                        "Montserrat-Medium",
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            width: 40,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  '4.3',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff705123),
                                                  ),
                                                ),
                                                Text(
                                                  '(100+)',
                                                  style: TextStyle(
                                                    fontFamily:
                                                        "Montserrat-Medium",
                                                    fontSize: 10,
                                                    color: Color(0xff705123),
                                                  ),
                                                )
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 32.5,
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: (MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5) -
                                              80,
                                          height: 32.5,
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 5),
                                                height: 2.5,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff24BE9B),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.5),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 4.5 /
                                                        5 *
                                                        ((MediaQuery.of(context)
                                                                    .size
                                                                    .width *
                                                                0.5) -
                                                            105)),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  '4.5',
                                                  style: TextStyle(fontSize: 7),
                                                ),
                                                height: 10,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffFAD350),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                              ),
                                              Positioned(
                                                top: 21,
                                                left: 5,
                                                child: Text(
                                                  'Quantity Score',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily:
                                                        "Montserrat-Medium",
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            width: 40,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  '4.5',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff705123),
                                                  ),
                                                ),
                                                Text(
                                                  '(95)',
                                                  style: TextStyle(
                                                    fontFamily:
                                                        "Montserrat-Medium",
                                                    fontSize: 10,
                                                    color: Color(0xff705123),
                                                  ),
                                                )
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 32.5,
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: (MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5) -
                                              80,
                                          height: 32.5,
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 5),
                                                height: 2.5,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff24BE9B),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.5),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 10 /
                                                        60 *
                                                        ((MediaQuery.of(context)
                                                                    .size
                                                                    .width *
                                                                0.5) -
                                                            105)),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  '10 m',
                                                  style: TextStyle(fontSize: 7),
                                                ),
                                                height: 10,
                                                width: 22,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffFAD350),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                              ),
                                              Positioned(
                                                top: 21,
                                                left: 5,
                                                child: Text(
                                                  'Serving Time',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily:
                                                        "Montserrat-Medium",
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            width: 40,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                Text(
                                                  '10m',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff705123),
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 32.5,
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "   Local Speciality",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily:
                                                    "Montserrat-SemiBold"),
                                          ),
                                          SvgPicture.asset(
                                            "assets/images/local_speciality.svg",
                                            height: 17,
                                          ),
                                        ],
                                      ),
                                      margin: EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(11.25),
                                        color: Color(0xfffad350),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 85,
                        // color: Colors.grey,
                        child: Row(children: <Widget>[
                          SizedBox(
                            width:
                                (MediaQuery.of(context).size.width * 0.5) + 20,
                            // color: Colors.deepPurple,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Sher-E-Punjab   ",
                                      style: TextStyle(
                                        fontFamily: "Montserrat-Medium",
                                        fontSize: 14,
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      "assets/images/veg.svg",
                                      height: 15,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    SvgPicture.asset(
                                      "assets/images/non-veg.svg",
                                      height: 15,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "North Indian, Chinese, South Indian",
                                  style: TextStyle(
                                    wordSpacing: 1,
                                    fontSize: 10,
                                    fontFamily: "Montserrat-Medium",
                                    color: Color(0xff7f7f7f),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Open Hours : 9 am - 11 pm ■  Since 1990​​",
                                  style: TextStyle(
                                    wordSpacing: 1,
                                    fontSize: 10,
                                    fontFamily: "Montserrat-Medium",
                                    color: Color(0xff7f7f7f),
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  "10 mins away |  ₹ 250 for two​",
                                  style: TextStyle(
                                    wordSpacing: 1,
                                    fontSize: 10,
                                    fontFamily: "Montserrat-Medium",
                                    color: Color(0xff7f7f7f),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width:
                                (MediaQuery.of(context).size.width * 0.5) - 40,
                            // color: Colors.red,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: ((MediaQuery.of(context).size.width *
                                              0.5) -
                                          40) *
                                      0.5,
                                  // color: Colors.lime,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      SizedBox(height: 17),
                                      SvgPicture.asset(
                                        "assets/images/google_map.svg",
                                        height: 45,
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        "Locate",
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontFamily: "Montserrat-Medium",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: ((MediaQuery.of(context).size.width *
                                              0.5) -
                                          40) *
                                      0.5,
                                  // color: Colors.lime,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      SizedBox(height: 17),
                                      // SvgPicture.asset(
                                      //   "assets/images/google_map.svg",
                                      //   height: 45,
                                      // ),
                                      Icon(Icons.shopping_cart, size: 45),
                                      SizedBox(height: 2),
                                      Text(
                                        "Place Order",
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontFamily: "Montserrat-Medium",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ],
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
