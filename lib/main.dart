import 'package:flutter/material.dart';
import 'screens/myHomePage.dart';
import 'screens/myPrintScanPage.dart';
import 'screens/myLandingPage/myLandingPage.dart';
import 'screens/myRegistrationPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        backgroundColor: Color(0xffE5E5E5),
      ),
      initialRoute: LandingPage.id,
      routes: {
        LandingPage.id : (context) => LandingPage(),
        RegistrationPage.id : (context) => RegistrationPage(),
        HomePage.id : (context) => HomePage(),
        PrintScanPage.id : (context) => PrintScanPage(),
      },
    );
  }
}

