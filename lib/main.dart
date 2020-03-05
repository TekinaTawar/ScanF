//TODO_
//Manage State of dropdown

import 'package:flutter/material.dart';
// import './screens/intro_slider.dart';
import './screens/create_profile_screen_1.dart';

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
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileScreen(),
    );
  }
}
