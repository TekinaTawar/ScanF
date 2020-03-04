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
              Container(
                padding: EdgeInsets.only(bottom: 5),
                child: Row(
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
              ),
              Container(
                margin: EdgeInsets.all(5),
                // color: Colors.lime,
                height: height * 0.06,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xff2970fe)),
                        ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xfffeb729),width: 2),),
                    labelText: 'Full Name',
                    labelStyle: TextStyle(color:Color.fromRGBO(0, 0, 0, 0.38))

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
                           focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xfffeb729)),
                        ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xfffeb729)),),
                            labelText: '+',
                            labelStyle: TextStyle(color:Color.fromRGBO(0, 0, 0, 0.38)),
                            fillColor: Color(0xfffeb729)),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                      flex: 1,
                    ),
                    Expanded(
                      flex: 12,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xfffeb729)),
                        ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xfffeb729)),),
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(color:Color.fromRGBO(0, 0, 0, 0.38))
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                // color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Date of Birth',
                        style: TextStyle(
                            fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
                      ),
                      
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      // color: Colors.indigo,
                      height: height * 0.06,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xfffeb729)),
                        ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xfffeb729)),),
                                labelText: 'dd',
                                labelStyle: TextStyle(color:Color.fromRGBO(0, 0, 0, 0.38))
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(),
                            flex: 1,
                          ),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xfffeb729)),
                        ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xfffeb729)),),
                                labelText: 'mm',
                                labelStyle: TextStyle(color:Color.fromRGBO(0, 0, 0, 0.38))
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(),
                            flex: 1,
                          ),
                          Expanded(
                            flex: 4,
                            child: TextField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xfffeb729)),
                        ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xfffeb729)),),
                                labelText: 'yyyy',
                                labelStyle: TextStyle(color:Color.fromRGBO(0, 0, 0, 0.38))
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
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
            ],
          ),
        ),
      ),
    );
  }
}
