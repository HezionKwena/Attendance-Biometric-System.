import 'package:flutter/material.dart';
import 'package:hezion_s/screens/screens.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      initialRoute: MyLandingPage.id,
      routes: {
        MyLandingPage.id : (context) => MyLandingPage(),
        RegistrationPage.id : (context) => RegistrationPage(),
        HomePage.id : (context) => HomePage(),
        MyPrintScanPage.id : (context) => MyPrintScanPage(),
      },
    );
  }
}

