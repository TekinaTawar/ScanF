import 'package:ScanF/screens/HomeScreens/landing_page.dart';
import 'package:flutter/material.dart';

import '../widgets/text_field.dart';

class CreateProf extends StatefulWidget {
  @override
  _CreateProfState createState() => _CreateProfState();
}

class _CreateProfState extends State<CreateProf> {
  final int _numPages = 3;
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true, i) : _indicator(false, i));
    }
    return list;
  }

  Widget _indicator(bool isActive, int page) {
    return Expanded(
      flex: 1,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        height: 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color:
              isActive ? Color(0xff2970fe) : Color(0xff2970fe).withOpacity(0.1),
        ),
      ),
    );
  }

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  bool _isMale = false;
  bool _isFemale = false;
  bool _isOthers = false;
  bool _notToSay = false;
  List<Widget> upperTexts = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Create Profile',
          style: TextStyle(fontSize: 32),
        ),
        Text(
          'This helps us to personalize your experience throughout the app.',
          style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
        )
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Food Preferences',
          style: TextStyle(fontSize: 32),
        ),
        Text(
          'This helps us to personalize your experience throughout the app.',
          style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
        )
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Advanced BMI',
          style: TextStyle(fontSize: 32),
        ),
        Text(
          'This helps us to personalize your experience throughout the app.',
          style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.38)),
        )
      ],
    ),
    
  ];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Color(0xfff5f5f5),
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Container(
                  height: height * 0.95,
                  width: double.infinity,
                  margin:
                      EdgeInsets.only(left: width * 0.07, right: width * 0.07),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 5, left: 5, right: 5, top: 20),
                        child: upperTexts[_currentPage]
                      ),
                      Container(
                        height: height * 0.2,
                        alignment: Alignment.center,
                        child: Container(
                          alignment: Alignment.center,
                          height: height * 0.2 - 40,
                          width: height * 0.2 - 40,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff518ef8),
                                Color(0xff75e3fd),
                              ],
                            ),
                            borderRadius:
                                BorderRadius.circular(height * 0.2 - 40),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: height * 0.2 - 55,
                            width: height * 0.2 - 55,
                            decoration: BoxDecoration(
                              color: Color(0xfff5f5f5),
                              borderRadius:
                                  BorderRadius.circular(height * 0.2 - 55),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.person,
                                size: height * 0.2 - 80,
                                color: Color(0xffdedede),
                              ),
                            ),
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
                      Expanded(
                        flex: 1,
                        child: PageView(
                          physics: NeverScrollableScrollPhysics(),
                          controller: _pageController,
                          onPageChanged: (int page) {
                            setState(() {
                              _currentPage = page;
                            });
                          },
                          children: <Widget>[
                            Form(
                              key: formKey1,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Container(
                                      height: height * 0.06,
                                      width: double.infinity,
                                      margin: EdgeInsets.all(5),
                                      child: CustomTextField(
                                        hintText: 'Full Name',
                                        inputType: TextInputType.text,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      // color: Colors.green,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(left: 2),
                                            child: Text(
                                              'Date of Birth',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.70)),
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
                                                  child: CustomTextField(
                                                    hintText: 'dd',
                                                    inputType:
                                                        TextInputType.number,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: SizedBox(),
                                                  flex: 1,
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: CustomTextField(
                                                    hintText: 'mm',
                                                    inputType:
                                                        TextInputType.number,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: SizedBox(),
                                                  flex: 1,
                                                ),
                                                Expanded(
                                                    flex: 4,
                                                    child: CustomTextField(
                                                      hintText: 'yyyy',
                                                      inputType:
                                                          TextInputType.number,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      // color: Colors.green,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(left: 2),
                                            child: Text(
                                              'I am',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.70)),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 3),
                                            // color: Colors.indigo,
                                            height: height * 0.06,
                                            child: Row(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Checkbox(
                                                      value: _isMale,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          _isMale = value;
                                                          _isFemale = false;
                                                          _isOthers = false;
                                                          _notToSay = false;
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      'Male',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Checkbox(
                                                      value: _isFemale,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          print('Clicked');
                                                          _isMale = false;
                                                          _isFemale = value;
                                                          _isOthers = false;
                                                          _notToSay = false;
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      'Female',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Checkbox(
                                                      value: _isOthers,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          _isMale = false;
                                                          _isFemale = false;
                                                          _isOthers = value;
                                                          _notToSay = false;
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      'Others',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Checkbox(
                                                value: _notToSay,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _isMale = false;
                                                    _isFemale = false;
                                                    _isOthers = false;
                                                    _notToSay = value;
                                                  });
                                                },
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Text(
                                                    'Prefer not to say',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    'Just Hungry',
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.06,
                                      width: double.infinity,
                                      margin: EdgeInsets.all(5),
                                      child: CustomTextField(
                                        hintText: 'Illness/ Allergies',
                                        inputType: TextInputType.text,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(child: Text('Food Preferences'),),
                            Form(
                              key: formKey2,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            'Your Body Mass Index',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.70)),
                                          ),
                                          padding: EdgeInsets.all(5),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              flex: 10,
                                              child: CustomTextField(
                                                  hintText: 'Approx. Weight',
                                                  inputType:
                                                      TextInputType.number),
                                            ),
                                            Expanded(
                                              child: SizedBox(),
                                              flex: 1,
                                            ),
                                            Expanded(
                                              flex: 10,
                                              child: CustomTextField(
                                                  hintText: 'Approx. Height',
                                                  inputType:
                                                      TextInputType.number),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                                bottom: 10, top: 10),
                                            child: Text(
                                              'Some More Details',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.70)),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Shirt Size',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromRGBO(
                                                            0, 0, 0, 0.38)),
                                                  ),
                                                ),
                                                Container(
                                                  height: height * 0.06,
                                                  width: 200,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: CustomTextField(
                                                          hintText:
                                                              'XS/S/M/L/XL/XXL',
                                                          inputType:
                                                              TextInputType
                                                                  .text,
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'Waist Size',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromRGBO(
                                                            0, 0, 0, 0.38)),
                                                  ),
                                                ),
                                                Container(
                                                  height: height * 0.06,
                                                  width: 200,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: CustomTextField(
                                                            hintText: '10 - 50',
                                                            inputType:
                                                                TextInputType
                                                                    .number),
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
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    'City of Residence',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromRGBO(
                                                            0, 0, 0, 0.70)),
                                                  ),
                                                  padding: EdgeInsets.all(5),
                                                ),
                                                Container(
                                                  height: height * 0.06,
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        flex: 6,
                                                        child: CustomTextField(
                                                          hintText: 'City',
                                                          inputType:
                                                              TextInputType
                                                                  .text,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: SizedBox(),
                                                        flex: 1,
                                                      ),
                                                      Expanded(
                                                        flex: 12,
                                                        child: CustomTextField(
                                                          hintText: 'State',
                                                          inputType:
                                                              TextInputType
                                                                  .text,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: height * 0.86,
                left: width * 0.07,
                right: width * 0.07,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      // color: Color(0xff2970fe),
                      onPressed: () {
                        setState(
                          () {
                            if (_currentPage > 0) {
                              _pageController.animateToPage((_currentPage - 1),
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            }
                          },
                        );
                      },
                      icon: Icon(Icons.chevron_left),
                    ),
                    MaterialButton(
                      // color: Color(0xff2970fe),
                      onPressed: () {
                        setState(
                          () {
                            if (_currentPage < 2) {
                              _pageController.animateToPage((_currentPage + 1),
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            }
                            if (_currentPage == 2) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LandingPage()),
                              );
                            }
                          },
                        );
                      },
                      child: Container(
                        child: Text('Next'),
                      ),
                    ),
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
