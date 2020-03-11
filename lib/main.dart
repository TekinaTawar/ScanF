//TODO_
//Manage State of dropdown
//Black screen issue
//Loading time of svg
//Transitions between pages

import 'package:flutter/material.dart';
// import 'dart:async';

import './screens/create_profile_screen/create_profile_screen_1.dart';
import './screens/create_profile_screen/create_profile_screen_2.dart';
import './screens/create_profile_screen/create_profile_screen_3.dart';
import './screens/splash_screen.dart';
import './screens/on-boarding-screen.dart';
// import './screens/create_profile_screen/test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Montserrat',
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: 'Open_Sans',
                //fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
      ),
      home: MyHomePage(),
      routes: {
        'create-profile-1': (ctx) => ProfileScreen1(),
        'create-profile-2': (ctx) => ProfileScreen2(),
        'create-profile-3': (ctx) => ProfileScreen3(),
        'splash-screen': (ctx) => SplashScreen()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigator.pushNamed(context, 'splash-screen');
    // Timer(Duration(seconds: 2), () {
    //   Navigator.pop(context);
      
    // });
    return OnBoard();
  }
}
