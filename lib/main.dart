import 'package:flutter/material.dart';


import './screens/create_profile_screen/create_profile_screen_1.dart';
import './screens/create_profile_screen/create_profile_screen_2.dart';
import './screens/create_profile_screen/create_profile_screen_3.dart';
import './screens/create_profile_screen/create_profile_screen_4.dart';
import './screens/splash_screen.dart';
import './screens/on-boarding-screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Montserrat',
<<<<<<< HEAD
<<<<<<< HEAD
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: 'Open_Sans',
                //fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
=======
=======
>>>>>>> 789e8a7f5f26cfd4e6a648c86d548d534ad1d003
        // textTheme: ThemeData.light().textTheme.copyWith(
        //       headline6: TextStyle(
        //         fontFamily: 'Open_Sans',
        //         //fontWeight: FontWeight.bold,
        //         fontSize: 20,
        //       ),
        //     ),
<<<<<<< HEAD
>>>>>>> profile screen 4 added
=======
>>>>>>> 789e8a7f5f26cfd4e6a648c86d548d534ad1d003
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
    return ProfileScreen4();
  }
}

