import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter/services.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  // List<Widget> _buildPageIndicator() {
  //   List<Widget> list = [];
  //   for (int i = 0; i < _numPages; i++) {
  //     list.add(i == _currentPage ? _indicator(true, i) : _indicator(false, i));
  //   }
  //   return list;
  // }

  // Widget _indicator(bool isActive, int page) {
  //   return Expanded(
  //     flex: 1,
  //     child: AnimatedContainer(
  //       duration: Duration(milliseconds: 150),
  //       height: isActive ? 12 : 8,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(4),
  //       ),
  //     ),
  //   );
  // }

  // Widget _page1() {
  //   return Container();
  // }

  // Widget _page2() {
  //   return Container();
  // }

  // Widget _page3() {
  //   return Container();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Color(0xfff5f5f5),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.blue,
                ),
              ),
              Container(
                height: 600,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                            child: SvgPicture.asset(
                            "assets/images/a1.svg",
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
              // PageView(
              //   physics: ClampingScrollPhysics(),
              //   controller: _pageController,
              //   onPageChanged: (int page) {
              //     setState(() {
              //       _currentPage = page;
              //     });
              //   },
              //   children: <Widget>[_page1(), _page2(), _page3()],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
