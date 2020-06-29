import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "MANALI",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "MALL ROAD, MANALI",
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
                    child: Icon(
                      Icons.account_circle,
                      color: Color.fromRGBO(210, 210, 210, 1),
                      size: 50,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                height: 45,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search by dish, cuisine, etc.",
                    hintStyle: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.17,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "SEARCH ALONG ROUTE",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Open_Sans",
                          ),
                        ),
                        Icon(Icons.location_on),
                        Column(
                          children: <Widget>[

                            // yaha error aya tha puri screen blank ho jati shayad wo height ka koi prob hai! maine aaj dekha nhi waise dekh lena

                            // Container(
                            //   margin: EdgeInsets.symmetric(vertical: 15),
                            //   height: 45,
                            //   child: TextFormField(
                            //     decoration: InputDecoration(
                            //       hintText:
                            //           "Search by dish, cuisine, etc.",
                            //       hintStyle: TextStyle(
                            //           fontSize: 13,
                            //           color:
                            //               Color.fromRGBO(0, 0, 0, 0.25),
                            //           fontWeight: FontWeight.w500),
                            //       border: OutlineInputBorder(
                            //         borderRadius:
                            //             BorderRadius.circular(7),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Container(
                            //   margin: EdgeInsets.symmetric(vertical: 15),
                            //   height: 45,
                            //   child: TextFormField(
                            //     decoration: InputDecoration(
                            //       hintText:
                            //           "Search by dish, cuisine, etc.",
                            //       hintStyle: TextStyle(
                            //           fontSize: 13,
                            //           color:
                            //               Color.fromRGBO(0, 0, 0, 0.25),
                            //           fontWeight: FontWeight.w500),
                            //       border: OutlineInputBorder(
                            //         borderRadius:
                            //             BorderRadius.circular(7),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Align(
                child: Text(
                  "QUICK LINKS",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: "Open_Sans",
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                // margin: EdgeInsets.all(8),

                // color:Colors.amber,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 8,bottom: 8,right: 8),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.30,
                      child: Card(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "TEA AND COFFEE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Open_Sans",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.32,
                      child: Card(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "STREET FOOD",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Open_Sans",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        color: Colors.pink[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // color: Colors.deepOrangeAccent,
                      ),
                      child: Card(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "PURE VEG",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Open_Sans",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.32,
                      child: Card(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "LOCAL DISHES",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Open_Sans",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        color: Colors.deepOrangeAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.32,
                      child: Card(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "TEA AND COFFEE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Open_Sans",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Text(
                    "NEARBY RESTAURANTS",
                    style: TextStyle(
                      fontFamily: "Open_Sans",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
