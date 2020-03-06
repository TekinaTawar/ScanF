//TODO_
//Manage State of dropdown

import 'package:flutter/material.dart';
import './screens/create_profile_screen_1.dart';
import './screens/create_profile_screen_2.dart';
import './screens/create_profile_screen_3.dart';

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
        'create-profile-1': (ctx)=> ProfileScreen1(),
        'create-profile-2': (ctx)=> ProfileScreen2(),
        'create-profile-3': (ctx)=> ProfileScreen3()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfileScreen1();
  }
}
