import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Color(0xff005aa7),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/images/logo.svg",
              height: height * 0.09,
              width: height * 0.09 * 1.7778,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'F for Food',
                style: TextStyle(color: Colors.white, fontSize: height * 0.025),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
