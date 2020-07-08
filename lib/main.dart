// import 'package:ScanF/screens/create_profile_screen/test.dart';
// import 'package:ScanF/screens/HomeScreens/hotelDetails.dart';
// import 'package:ScanF/screens/HomeScreens/discover.dart';
// import 'package:ScanF/screens/HomeScreens/hotelDetails.dart';
import 'package:ScanF/screens/onboard.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';


// import './screens/create_profile_screen/create_profile_screen_1.dart';
// import './screens/create_profile_screen/create_profile_screen_2.dart';
// import './screens/create_profile_screen/create_profile_screen_3.dart';
// import 'screens/HomeScreens/landing_page.dart';
// import './screens/profile_screens.dart';
// import './screens/splash_screen.dart';
//  import './screens/onboard.dart';
// import './screens/on-boarding-screen.dart';

void main() => runApp(DevicePreview(builder: (context) => MyApp(),enabled: false,),);


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: DevicePreview.of(context).locale,
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: null,
        fontFamily: 'Montserrat',
        // textTheme: ThemeData.light().textTheme.copyWith(
        //       title: TextStyle(
        //         fontFamily: 'Open_Sans',
                // fontWeight: FontWeight.bold,
        //         fontSize: 20,
        //       ),
        //     ),
        // textTheme: ThemeData.light().textTheme.copyWith(
        //       headline6: TextStyle(
        //         fontFamily: 'Open_Sans',
                //fontWeight: FontWeight.bold,
        //         fontSize: 20,
        //       ),
        //     ),
      ),
      home: OnBoard(),
    );
  }
}


