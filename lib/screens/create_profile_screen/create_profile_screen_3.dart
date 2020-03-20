import 'package:flutter/material.dart';
import '../../widgets/input_box.dart';

class ProfileScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        // color: Colors.yellow,
        color: Color(0xfff5f5f5),
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                          child: Container(
                  // color: Colors.purple,
                  height: height*0.96,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: width * 0.07, right: width * 0.07),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding:
                            EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 20),
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
                    
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 20, left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: (){Navigator.pop(context);Navigator.pop(context);},
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
                                onTap: (){Navigator.pop(context);},
                                child: Container(
                                  height: 8,
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
                                  height: 12,
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
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Your Family Belongs to',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 0.38)),
                              ),
                              padding: EdgeInsets.all(5),
                            ),
                            Container(
                                height: height * 0.06,
                                child: InputBox(
                                  text: 'State',
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Currently you are Living in',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 0.38)),
                              ),
                              padding: EdgeInsets.all(5),
                            ),
                            Container(
                              height: height * 0.06,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 6,
                                    child: InputBox(
                                      text: 'City',keyboardStyle: TextInputType.text,
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 12,
                                    child: InputBox(
                                      text: 'State',keyboardStyle: TextInputType.text,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Three other states you lived',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 0.38)),
                              ),
                              padding: EdgeInsets.all(5),
                            ),
                            Container(
                              height: height * 0.06,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 6,
                                    child: InputBox(
                                      text: 'City',
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 12,
                                    child: InputBox(
                                      text: 'State',keyboardStyle: TextInputType.text,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              height: height * 0.06,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: InputBox(
                                      text: 'Years',  keyboardStyle: TextInputType.number,
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                    flex: 1,
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.add),
                                    onPressed: null,
                                    color: Color(0xfffeb729),
                                  )
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
                      
                    ],
                  ),
                ),
              ),
              Container(
                        margin: EdgeInsets.only(bottom: 20,top: height*0.86,left: 15,right:15),
                        padding: EdgeInsets.all(10),
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
