import 'package:flutter/material.dart';

class OnBoard extends StatefulWidget {
  OnBoard({Key key}) : super(key: key);

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  final int _numPages = 4;
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
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          color: isActive ? Colors.blue : Colors.black45,
          borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _introTexts = [
    Text(
      'Find restaurants nearby quickly',
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Open_Sans"),
      textAlign: TextAlign.center,
    ),
    Text(
      'With new search modes, save travel time',
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Open_Sans"),
      textAlign: TextAlign.center,
    ),
    Text(
      'Discover local speciality dishes nearby',
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Open_Sans"),
      textAlign: TextAlign.center,
    ),
    Text(
      'Order ‘on-the-go’ and enjoy no waiting time',
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Open_Sans"),
      textAlign: TextAlign.center,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xfff5f5f5),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 500,
                child: PageView(
                  pageSnapping: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.green,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical:17),
                height: 5,
                width: double.infinity,
                color: Colors.blue,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                child: Align(
                  child: _introTexts[_currentPage],
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Align(
                  child: Text(
                    'Looking for a place to eat?',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Open_Sans"),
                    textAlign: TextAlign.center,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  child: Container(
                    alignment: Alignment.center,
                    width: 285,
                    height: 47,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(13)),
                    child: Text(
                      'SET SEARCH LOCATION',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Open_Sans'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Have an account?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Open_Sans"),
                      textAlign: TextAlign.center,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('tapped');
                      },
                      child: Text(
                        ' LOGIN',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Open_Sans"),
                        textAlign: TextAlign.center,
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
