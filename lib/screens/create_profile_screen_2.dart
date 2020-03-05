import 'package:flutter/material.dart';
import '../widgets/input_box.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      // color: Colors.yellow,
      color: Color(0xfff5f5f5),
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
                padding: EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 20),
                // color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Advanced BMI',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      'This helps us to personalize your experience throughout the app.',
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
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
                      Center(
                        child: Container(
                          height: height * 0.2 - 40,
                          width: height * 0.2 - 40,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xff518ef8),
                                Color(0xff75e3fd)
                              ]),
                              borderRadius:
                                  BorderRadius.circular(height * 0.2 - 40)),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: height * 0.2 - 55,
                          width: height * 0.2 - 55,
                          decoration: BoxDecoration(
                              color: Color(0xfff5f5f5),
                              borderRadius:
                                  BorderRadius.circular(height * 0.2 - 55)),
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.person,
                          size: height * 0.2 - 80,
                          color: Color(0xffdedede),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        child: Container(
                          height: 8,
                          // width: 96,
                          decoration: BoxDecoration(
                            // border: Border.all(style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xfffeb729),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        child: Container(
                          height: 12,
                          // width: 96,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xff0ed2f7),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        child: Container(
                          height: 8,
                          // width: 96,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xff2970fe),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Your Body Mass Index',
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
                    ),
                    padding: EdgeInsets.all(5),
                  ),
                  Row(
                    children: <Widget>[
                      InputBox(
                        flex: 10,
                        text: 'Approx. Weight',
                      ),
                      Expanded(
                        child: SizedBox(),
                        flex: 1,
                      ),
                      InputBox(
                        flex: 10,
                        text: 'Approx. Height',
                      )
                    ],
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10, top: 10),
                      child: Text(
                        'Some More Details',
                        style: TextStyle(
                            fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Shirt Size',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(0, 0, 0, 0.38)),
                            ),
                          ),
                          // Expanded(child: SizedBox(),flex: 1,),
                          Container(
                            height: height*0.06,
                            width: 200,
                            child: Column(
                              children: <Widget>[
                                InputBox(text: 'XS/S/M/L/XL/XXL',flex: 1,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Waist Size',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(0, 0, 0, 0.38)),
                            ),
                          ),
                          // Expanded(child: SizedBox(),flex: 1,),
                          Container(
                            height: height*0.06,
                            width: 200,
                            child: Column(
                              children: <Widget>[
                                InputBox(text: '10 - 50',flex: 1,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(),
                flex: 1,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(5),
                child: RaisedButton(
                  onPressed: () {},
                  child: Container(
                    child: Text(
                      'Next',
                      style: TextStyle(color: Color(0xfffee729)),
                    ),
                    width: double.infinity,
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