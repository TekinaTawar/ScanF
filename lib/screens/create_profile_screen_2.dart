import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      // color: Colors.yellow,
      // color: Color(0xfff5f5f5),
      child: SafeArea(
        child: Container(
          // color: Colors.purple,
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.only(left: width * 0.07, right: width * 0.07),
          // child: TextField(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                // color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Create Profile',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'This helps us to personalize your experience throughout the app.',
                      style: TextStyle(
                          fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.38)),
                    )
                  ],
                ),
              ),
              Container(
                // color: Colors.orange,
                height: height * 0.2,
              ),
              Container(
                margin: EdgeInsets.all(5),
                // color: Colors.lime,
                height: height * 0.06,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: height * 0.06,
                // color: Colors.cyan,
                width: double.infinity,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      // color: Colors.pink,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '+91',
                            focusColor: Colors.black,
                            fillColor: Color(0xfffeb729)),
                      ),
                      // width: 80,
                      // height: 38.77,
                      // padding: EdgeInsets.only(left: 38, right: 10),
                    ),
                    Expanded(
                      child: SizedBox(),
                      flex: 1,
                    ),
                    Expanded(
                      flex: 12,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',
                        ),
                      ),
                      // width: 200,
                      // height: 38.77,
                      // padding: EdgeInsets.only(right: 10),
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      // color: Colors.red,
                      child: Text(
                        'Date of Birth',
                        style: TextStyle(
                            fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      // color: Colors.indigo,
                      height: height * 0.06,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'dd',
                              ),
                            ),
                            // width: 100,
                            // height: 38.77,
                            // padding: EdgeInsets.only(left: 37),
                          ),
                          Expanded(child: SizedBox(),flex: 1,),
                          Expanded(
                            flex:2,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'mm',
                              ),
                            ),
                            // width: 87,
                            // height: 38.77,
                            // padding: EdgeInsets.only(left: 10),
                          ),
                          Expanded(child: SizedBox(),flex: 1,),
                          Expanded(
                            flex: 4,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'yyyy',
                              ),
                            ),
                            // width: 100,
                            // height: 38.77,
                            // padding: EdgeInsets.only(left: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // color: Colors.yellow,
        ),
      ),
    );
  }
}
