import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: Image.asset(
                          "assets/images/dosa.jpg",
                          height: double.infinity,
                          width: 205,
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/images/dosa.jpg",
                      height: double.infinity,
                      width: 205,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:1.0),
                      child: Image.asset(
                        "assets/images/dosa.jpg",
                        height: double.infinity,
                        width: 205,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Sher-E-Punjab        ",
                            style: TextStyle(
                              fontSize: 20,
                              // fontWeight: FontWeight.w300,
                              fontFamily: "Montserrat-SemiBold",
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:3.0),
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
                    ],
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
