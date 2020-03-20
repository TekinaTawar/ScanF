import 'package:flutter/material.dart';
import '../../widgets/dropdown_country_code.dart';
import '../../widgets/input_box.dart';

class ProfileScreen1 extends StatelessWidget {
  Widget _upperTexts() {
    return Container(
      padding: EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 20),
      // color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Create Profile',
            style: TextStyle(fontSize: 32),
          ),
          Text(
            'This helps us to personalize your experience throughout the app.',
            style:
                TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
          )
        ],
      ),
    );
  }

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
                      _upperTexts(),
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
                                  height: 12,
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
                                onTap: () {
                                  Navigator.pushNamed(context, 'create-profile-2');
                                },
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
                                onTap: () {
                                  Navigator.pushNamed(context, 'create-profile-2');
                                  Navigator.pushNamed(context, 'create-profile-3');
                                },
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
                      Container(
                        height: height * 0.06,
                        width: double.infinity,
                        margin: EdgeInsets.all(5),
                        child: InputBox(
                          text: 'Full name',
                          keyboardStyle: TextInputType.text,
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
                                child: CountryCodeSelector()),
                            Expanded(
                              child: SizedBox(),
                              flex: 1,
                            ),
                            Expanded(
                              flex: 12,
                              child: InputBox(
                                text: 'Phone Number',
                                keyboardStyle: TextInputType.number,
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
                              padding: EdgeInsets.only(left: 2),
                              child: Text(
                                'Date of Birth',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 0.38)),
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
                                    child: InputBox(
                                      text: 'dd',
                                      keyboardStyle: TextInputType.number,
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: InputBox(
                                      text: 'mm',
                                      keyboardStyle: TextInputType.number,
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: InputBox(
                                      text: 'yyyy',
                                      keyboardStyle: TextInputType.number,
                                    ),
                                  )
                                ],
                              ),
                            ),
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
              Positioned(left: 5,right: 5, // just tried this widget only for this screen but dint make any diff
                
                top: height*0.86,
                
              
                        // margin: EdgeInsets.only(bottom: 20,top: height*0.86,left: 15,right:15),
                        // padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, 'create-profile-2'),
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
