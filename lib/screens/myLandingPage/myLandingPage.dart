import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hezion_s/screens/myHomePage.dart';
import 'package:hezion_s/screens/myRegistrationPage.dart';
import 'package:hezion_s/shared_widgets/stacked_containers.dart';

class LandingPage extends StatefulWidget {
  static const String id = 'landing_screen';

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //extracted widget
            Expanded(
              flex: 1,
              child: Hero(
                tag: 'logo',
                child: StackedContainers(),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: SvgPicture.asset('assets/icons/fingerprint_inforgraphic.svg'),
                        margin: EdgeInsets.all(15.0),
                      ),
                      flex: 2,
                    ),
                    //Add expanded for dynamic scalling
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Your attendance starts here',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff6C63FF),
                                    onPrimary: Color(0xffFFFFFF),
                                    minimumSize: Size(150.0, 40.0),
                                  ),
                                  onPressed: (){
                                    Navigator.pushNamed(context, RegistrationPage.id);
                                  },
                                  child: Text('REGISTER',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff6C63FF),
                                    onPrimary: Color(0xffFFFFFF),
                                    minimumSize: Size(150.0, 40.0),
                                  ),
                                  onPressed: (){
                                    Navigator.pushNamed(context, HomePage.id);
                                  },
                                  child: Text('SIGN IN',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
