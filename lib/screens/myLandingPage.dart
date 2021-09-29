import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hezion_s/screens/screens.dart';
import 'package:hezion_s/shared_widgets/shared_widgets.dart';


class MyLandingPage extends StatefulWidget {
  static const String id = 'landing_screen';

  @override
  State<MyLandingPage> createState() => _MyLandingPageState();
}

class _MyLandingPageState extends State<MyLandingPage> {
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
                      flex: 1,
                    ),
                    //Add expanded for dynamic scalling
                    Expanded(
                      flex: 1,
                        child:  Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text('Your attendance starts here',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              MyButton(
                                onPressed: ()=>Navigator.pushNamed(context, RegistrationPage.id),
                                text: "REGISTER",
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                              MyButton(
                                onPressed: ()=>Navigator.pushNamed(context, HomePage.id),
                                text: "SIGN IN",
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                            ],
                          )
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