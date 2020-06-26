import 'package:flutter/material.dart';

import './structured_widgets.dart';

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
          color: isActive ? Color(0xff2970fe):Color(0xff2970fe).withOpacity(0.1),
        ),
      ),
    );
  }

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
                        child: AnimatedCrossFade(
                            firstChild: upperTexts[0],
                            secondChild: upperTexts[1],
                            crossFadeState: (_currentPage == 0)
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                            duration: Duration(milliseconds: 500)),
                      ),
                      circleAvatar(height),
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
                          children: mainBoxes(height, width),
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
                    IconButton(
                      // color: Color(0xff2970fe),
                      onPressed: () {
                        setState(
                          () {
                            if (_currentPage < 2) {
                              _pageController.animateToPage((_currentPage + 1),
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            }
                          },
                        );
                      },
                      icon: Icon(Icons.chevron_right),
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
