import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: ListView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: Image.asset(
                      "assets/images/dosa.jpg",
                      height: double.infinity,
                      width: 250,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1.0),
                    child: Image.asset(
                      "assets/images/dosa.jpg",
                      height: double.infinity,
                      width: 250,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 9,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 9.0, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Sher-E-Punjab  ",
                          style: TextStyle(
                            fontSize: 20,
                            // fontWeight: FontWeight.w300,
                            fontFamily: "Montserrat-SemiBold",
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.0),
                          child: SvgPicture.asset(
                            "assets/images/veg.svg",
                            height: 23,
                          ),
                        ),
                        SvgPicture.asset(
                          "assets/images/non-veg.svg",
                          height: 23,
                        )
                      ],
                    ),
                    Expanded(
                      flex: 1,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: double.infinity,
                              height: 90,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'ADDRESS',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily:
                                                  'Montserrat-SemiBold'),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          '2/A, Kalakunj, Mall Road, Manali\n10 mins away |  ₹ 250 for two',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily:
                                                  'Montserrat-SemiBold'),
                                        )
                                      ],
                                    ),
                                    flex: 1,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'AMENITIES',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily:
                                                  'Montserrat-SemiBold'),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 2.0),
                                              child: Icon(Icons.wifi),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 2.0),
                                              child: Icon(Icons.radio),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    flex: 1,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                'Indoor Seating | No Alcohol Served | Self Service | Hygienic Atmosphere',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.directions,
                                    size: 14,
                                  ),
                                  Text(
                                    'GET DIRECTIONS',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat-SemiBold',
                                        fontSize: 12,
                                        color: Colors.red,
                                        decoration: TextDecoration.underline),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'TOP DISHES PEOPLE ORDER',
                                style: TextStyle(
                                  fontFamily: 'Montserrat-SemiBold',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 2.0),
                              child: Text(
                                'Chicken Dum Biryani, Chicken Curry, Kadhai Paneer, Naan, Mutton Bhuna,  Paneer Butter Masala',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'LOCAL DISHES',
                                style: TextStyle(
                                  fontFamily: 'Montserrat-SemiBold',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 2.0),
                              child: Text(
                                'Patande, Bhey, Aktori, Chana Madra, Sidu, River Trout, Local Tea',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 4),
                              child: Divider(
                                thickness: 3.5,
                                color: Color.fromRGBO(128, 128, 128, 0.07),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'MENU',
                                style: TextStyle(
                                  fontFamily: 'Montserrat-SemiBold',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Container(
                              // color: Colors.cyan,
                              height: 70,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Order',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat-SemiBold',
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    ' On-The-Go',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat-SemiBold',
                                      fontSize: 12,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Text(
                                    ' and save travel time with no waiting time',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat-SemiBold',
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 125,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xff296693),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'ORDER NOW',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat-SemiBold',
                                        fontSize: 14),
                                  ),
                                ),
                                Text(
                                  '   to skip serving time & table booking',
                                  style: TextStyle(
                                    color: Color(0xff7F7F7F),
                                    fontFamily: 'Montserrat-SemiBold',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 4),
                              child: Divider(
                                thickness: 3.5,
                                color: Color.fromRGBO(128, 128, 128, 0.07),
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/images/scanf.svg',
                              height: 40,
                              color: Colors.grey[300],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
