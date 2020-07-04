import 'package:flutter/material.dart';
import './login.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              Expanded(
                // height: 500,
                flex: 5,
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
                      child: Stack(
                        children: <Widget>[
                          Align(
                            child: SizedBox(
                              // width: double.infinity,
                              height: 240,
                              child: SvgPicture.asset(
                                "assets/images/betterBack.svg",
                                // cacheHeight: 300,
                                // filterQuality: FilterQuality.high,
                              ),
                            ),
                          ),
                          Align(
                            child: SizedBox(
                              height: 300,
                              child: SvgPicture.asset(
                                "assets/images/ladkaLadki.svg",
                                // height:250,
                                // cacheHeight: 300,
                                // filterQuality: FilterQuality.high,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Align(
                        alignment: Alignment.center,
                        // color: Colors.green,
                        child: SizedBox(
                          height: 300,
                          child: SvgPicture.asset(
                            "assets/images/searchAlong.svg",
                            // cacheHeight: 300,
                            // filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                    ),
                    Image(
                        image: AssetImage(
                          "assets/images/dosa.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                    Container(
                      child: SvgPicture.asset(
                        "assets/images/loc.svg",
                        // cacheHeight: 300,
                        // filterQuality: FilterQuality.high,
                      ),
                      // color: Colors.yellow,
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
                margin: EdgeInsets.symmetric(vertical: 17),
                height: 5,
                width: double.infinity,
                color: Color(0xff0070C0),
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
                        fontWeight: FontWeight.w600,
                        fontFamily: "Open_Sans"),
                    textAlign: TextAlign.center,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 285,
                      height: 47,
                      decoration: BoxDecoration(
                          color: Color(0xff1A5B94),
                          borderRadius: BorderRadius.circular(13)),
                      child: Text(
                        'SET SEARCH LOCATION',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Open_Sans',
                        ),
                      ),
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
                          fontWeight: FontWeight.w600,
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
                            color: Color(0xff1A5B94),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Open_Sans"),
                        textAlign: TextAlign.center,
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
    );
  }
}
