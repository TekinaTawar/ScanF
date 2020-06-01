import 'package:flutter/material.dart';


import './screens/create_profile_screen/create_profile_screen_1.dart';
import './screens/create_profile_screen/create_profile_screen_2.dart';
import './screens/create_profile_screen/create_profile_screen_3.dart';
import './screens/create_profile_screen/create_profile_screen_4.dart';
import './screens/create_profile_screen/test.dart';
import './screens/splash_screen.dart';
import './screens/on-boarding-screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: null,
        fontFamily: 'Montserrat',
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: 'Open_Sans',
                //fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
        // textTheme: ThemeData.light().textTheme.copyWith(
        //       headline6: TextStyle(
        //         fontFamily: 'Open_Sans',
        //         //fontWeight: FontWeight.bold,
        //         fontSize: 20,
        //       ),
        //     ),
      ),
      home: CreateProf(),
      routes: {
        'create-profile-1': (ctx) => ProfileScreen1(),
        'create-profile-2': (ctx) => ProfileScreen2(),
        'create-profile-3': (ctx) => ProfileScreen3(),
        'splash-screen': (ctx) => SplashScreen()
      },
    );
  }
}


