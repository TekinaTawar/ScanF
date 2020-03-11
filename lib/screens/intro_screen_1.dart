import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class IntroScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
              child: Container(color: Color(0xfff5f5f5),
          width: double.infinity,
          child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          
          children: <Widget>[
            // RaisedButton(onPressed: null, child: Icon(Icons.skip_next),),
            Stack(
                      children: <Widget>[
                        Container(
                            // height: height * 0.2 - 40,
                            // width: height * 0.2 - 40,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0xff518ef8),
                                  Color(0xff75e3fd)
                                ]),
                                borderRadius:
                                    BorderRadius.horizontal(left: Radius.elliptical(2, 3)),
                          ),
                        ),
                        
                          Container(
                            // height: height * 0.2 - 55,
                            // width: height * 0.2 - 55,
                            decoration: BoxDecoration(
                                color: Color(0xfff5f5f5),
                                borderRadius:
                                    BorderRadius.circular(10)),
                          ),
                        
                        
                          Icon(
                            Icons.person,
                            size: 10,
                            color: Color(0xffdedede),
                          ),
                        
                          ],
                    ),
            
            // SvgPicture.asset("assets/images/Group 90.svg",),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('F for Food',style: TextStyle(color: Colors.white),),
            ),
          ],
        )
,

        ),
      ),
    );

  }
}