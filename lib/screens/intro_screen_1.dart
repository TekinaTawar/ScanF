import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class IntroScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(color: Color(0xfff5f5f5),
        width: double.infinity,
        child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        
        children: <Widget>[
          
          SvgPicture.asset("assets/images/Group 90.svg",),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('F for Food',style: TextStyle(color: Colors.white),),
          ),
        ],
      )
,

      ),
    );

  }
}