import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter/services.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  final int _numPages = 5;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true, i) : _indicator(false, i));
    }
    return list;
  }

  Widget _indicator(bool isActive, int page) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      margin: EdgeInsets.symmetric(horizontal: 7.5),
      height: 8,
      width: isActive ? 24 : 16,
      decoration: BoxDecoration(
          color: isActive ? Colors.black : Colors.black45,
          borderRadius: BorderRadius.circular(12)),
    );
  }

  Widget _nextButton() {
    return Container(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient:
              LinearGradient(colors: [Color(0xff75E3FD), Color(0xff518EF8)]),
        ),
        width: 70,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          margin: EdgeInsets.all(3),
          child: Center(
            child: Text(
              'SKIP',
              style: TextStyle(
                color: Color(0xff518EF8),
                fontSize: 16,
                fontFamily: 'Open_Sans',
              ),
            ),
          ),
        ),
      ),
    );
  }

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
              GestureDetector(
                child: _nextButton(),
                onTap: () {
                  _pageController.animateToPage(4,
                      duration: Duration(milliseconds: 500), curve: Curves.ease);
                },
              ),
              Container(
                height: MediaQuery.of(context).size.height - 200,
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Expanded(child: SizedBox()),
                        Container(
                          child: Text(
                            'Unable to find useful listings nearby when you travel?',
                            style: TextStyle(
                              fontSize: 29,
                              fontFamily: 'Montserrat',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Expanded(child: SizedBox()),
                        Container(
                          child: Text(
                            'Fed up of searching the best places to eat nearby?',
                            style: TextStyle(
                              fontSize: 29,
                              fontFamily: 'Montserrat',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Expanded(child: SizedBox()),
                        Container(
                          child: Text(
                            'Wasting your valuable travel time searching and reading reviews?',
                            style: TextStyle(
                              fontSize: 29,
                              fontFamily: 'Montserrat',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Expanded(child: SizedBox()),
                        Container(
                          child: Text(
                            'We empower you to quickly discoer the best places to eat.',
                            style: TextStyle(
                              fontSize: 29,
                              fontFamily: 'Montserrat',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Expanded(child: SizedBox()),
                        Container(
                          child: Text(
                            'Complete your profile to experience the power of  Ai  driven search!',
                            style: TextStyle(
                              fontSize: 29,
                              fontFamily: 'Montserrat',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(),
                flex: 1,
              ),
              _currentPage == 4
                  ? GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, 'create-profile-1');
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                              blurRadius:
                                  4.0, // has the effect of softening the shadow
                              offset: Offset(
                                4.0, // horizontal, move right 10
                                4.0, // vertical, move down 10
                              ),
                            )
                          ],
                        ),
                        width: double.infinity,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                'assets/images/google_icon.svg',
                                height: 30,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  color: Color(0xff518EF8),
                                ),
                                child: Center(
                                  child: Text(
                                    'Sign in with Google',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(),
                    ),
              Expanded(
                child: SizedBox(),
                flex: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
