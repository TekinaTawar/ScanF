import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/dropdown_country_code.dart';
import '../../widgets/input_box.dart';

class CreateProf extends StatefulWidget {
  @override
  _CreateProfState createState() => _CreateProfState();
}

class _CreateProfState extends State<CreateProf> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true, i) : _indicator(false, i));
    }
    return list;
  }

  Color _colorPicker(page) {
    Color color;
    if (page == 0) {
      color = Color(0xfffeb729);
    }
    if (page == 1) {
      color = Color(0xff0ed2f7);
    }
    if (page == 2) {
      color = Color(0xff2970fe);
    }
    return color;
  }

  Widget _indicator(bool isActive, int page) {
    return Expanded(
      flex: 1,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        height: isActive ? 12 : 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: _colorPicker(page),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    Widget _page1() {
      return Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.only(left: width * 0.07, right: width * 0.07),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
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
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
                  )
                ],
              ),
            ),
            Container(
              height: height * 0.2,
              alignment: Alignment.center,
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      height: height * 0.2 - 40,
                      width: height * 0.2 - 40,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff518ef8), Color(0xff75e3fd)]),
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
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20, left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
            ),
            Container(
              height: height * 0.06,
              width: double.infinity,
              margin: EdgeInsets.all(5),
              child: InputBox(
                text: 'Full name',
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
                          child: InputBox(
                            text: 'dd',
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
      );
    }

    Widget _page2() {
      return Container(
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
                            gradient: LinearGradient(
                                colors: [Color(0xff518ef8), Color(0xff75e3fd)]),
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
                children: _buildPageIndicator(),
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
                    Expanded(
                      flex: 10,
                      child: InputBox(
                        text: 'Approx. Weight',
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                      flex: 1,
                    ),
                    Expanded(
                      flex: 10,
                      child: InputBox(
                        text: 'Approx. Height',
                      ),
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
                          height: height * 0.06,
                          width: 200,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: InputBox(
                                  text: 'XS/S/M/L/XL/XXL',
                                ),
                                flex: 1,
                              ),
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
                          height: height * 0.06,
                          width: 200,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: InputBox(
                                  text: '10 - 50',
                                ),
                                flex: 1,
                              ),
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
                    onPressed: (){},
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
      );
    }

    Widget _page3() {
      return Container(
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
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20, left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
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
                          fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
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
                          fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
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
                            text: 'State',
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
                          fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
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
                            text: 'State',
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
                            text: 'Years',
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
            Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(5),
                  child: RaisedButton(
                    onPressed: (){},
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
      );
    }

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Container(
          color: Color(0xfff5f5f5),
          child: SafeArea(
            child: PageView(
              physics: ClampingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: <Widget>[_page1(), _page2(),_page3()],
            ),
          ),
        ),
      ),
    );
  }
}
