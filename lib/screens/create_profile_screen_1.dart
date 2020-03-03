import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  left: 42,
                  //bottom: 7,
                ),
                child: Text("Create Profile", style: TextStyle(fontSize: 20)),
              ),
              Padding(
                padding: EdgeInsets.only(
                  //top: 15,
                  left: 38,
                  //bottom: 7,
                ),
                child: Container(
                  child: Text(
                    "This helps us to personalize your experience throughout the app ",
                    style: TextStyle(fontSize: 11),
                  ),
                  height: 30,
                  width: 216,
                ),
              ),
              Container(
                height: 82,
                width: double.infinity,
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.account_circle,
                          size: 71,
                          color: Colors.grey,
                        ),
                        radius: 41,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      height: 8,
                      width: 96,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xfffeb729),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 8,
                      width: 96,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xff0ed2f7),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 8,
                      width: 96,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xff2970fe),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                  ),
                ),
                width: double.infinity,
                height: 38.77,
                padding: EdgeInsets.only(left: 38, right: 38),
              ),
              Row(
                children: <Widget>[
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '+91',
                          focusColor: Colors.black,
                          fillColor: Color(0xfffeb729)),
                    ),
                    width: 100,
                    height: 38.77,
                    padding: EdgeInsets.only(left: 38, right: 10),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number',
                      ),
                    ),
                    width: 230,
                    height: 38.77,
                    padding: EdgeInsets.only(right: 10),
                  ),
                ],
              ),
              Container(
                child: Text(
                  'Date of Birth',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
                ),
                padding: EdgeInsets.only(
                  left: 37,
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'dd',
                      ),
                    ),
                    width: 114,
                    height: 38.77,
                    padding: EdgeInsets.only(left: 37),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'mm',
                      ),
                    ),
                    width: 87,
                    height: 38.77,
                    padding: EdgeInsets.only(left: 10),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'yyyy',
                      ),
                    ),
                    width: 118,
                    height: 38.77,
                    padding: EdgeInsets.only(left: 10),
                  ),
                ],
              ),
              Container(
                child: Text(
                  'I am',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(0, 0, 0, 0.38),
                  ),
                ),
                padding: EdgeInsets.only(
                  left: 37,
                ),
              ),
              Row(
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      child: Icon(
                        Icons.accessibility,
                        size: 50,
                      ),
                      padding: EdgeInsets.only(left: 37),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      child: Icon(
                        Icons.pregnant_woman,
                        size: 50,
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      child: Icon(
                        Icons.close,
                        size: 50,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 37),
                child: RaisedButton(
                  onPressed: () {},
                  child: Container(
                    child: Text(
                      'Next',
                      style: TextStyle(color: Color(0xfffee729)),
                    ),
                    width: 288,
                    alignment: Alignment.center,
                  ),
                  color: Color(0xff2970fe),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
