import 'package:flutter/material.dart';
import 'package:hezion_s/screens/screens.dart';
import 'package:hezion_s/shared_widgets/shared_widgets.dart';


class RegistrationPage extends StatefulWidget {

  static const String id = 'registration_screen';

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              //this hero widget adds an animation
              child: Hero(
                tag: 'logo',
                child: StackedContainers(),
              ),
              flex: 1,
            ),
            Expanded(
              flex: 3,
              child: Container(
                //adding the icon background onto this
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //column inside an expanded for 2 intro texts
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Welcome !',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                              ),
                            ),
                            Text('Let\'s help you enroll',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //This column inside an expanded is to hold the textfields
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InputField(hint: 'Enter your full name'),
                              InputField(hint: 'Enter your Admission number'),
                              InputField(hint: 'Enter your Parent\'s Phone Number' ),
                              TextButton(
                                  onPressed: (){
                                    //Our sample success event popup
                                    showDialog(context: context, builder: (context){
                                      return Dialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(18.0),
                                        ),
                                        backgroundColor: Color(0xffE5E5E5),
                                        child: Container(
                                            height: 240.0,
                                            child: Padding(
                                              padding: EdgeInsets.all(15.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Text('You have been successfuly registered',
                                                    style: TextStyle(
                                                      fontSize: 18.0,
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                                  Image(
                                                    image: AssetImage('assets/icons/success.png'),
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                      primary: Color(0xff6C63FF),
                                                      onPrimary: Color(0xffFFFFFF),
                                                      minimumSize: Size(120.0, 40.0),
                                                    ),
                                                    onPressed:(){
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                      );
                                    }
                                    );
                                    //Our sample failed event popup
                                    // showDialog(context: context, builder: (context){
                                    //   return Dialog(
                                    //     shape: RoundedRectangleBorder(
                                    //       borderRadius: BorderRadius.circular(18.0),
                                    //     ),
                                    //     backgroundColor: Color(0xffE5E5E5),
                                    //     child: Container(
                                    //         height: 240.0,
                                    //         child: Padding(
                                    //           padding: EdgeInsets.all(15.0),
                                    //           child: Column(
                                    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    //             children: [
                                    //               Text('Registration failed, please try again',
                                    //                 style: TextStyle(
                                    //                   fontSize: 18.0,
                                    //                   color: Colors.redAccent,
                                    //                 ),
                                    //               ),
                                    //               Image(
                                    //                 image: AssetImage('assets/icons/fail.png'),
                                    //               ),
                                    //               ElevatedButton(
                                    //                 style: ElevatedButton.styleFrom(
                                    //                   primary: Color(0xff6C63FF),
                                    //                   onPrimary: Color(0xffFFFFFF),
                                    //                   minimumSize: Size(120.0, 40.0),
                                    //                 ),
                                    //                 onPressed:(){
                                    //                   Navigator.pop(context);
                                    //                 },
                                    //                 child: Text('Ok'),
                                    //               ),
                                    //             ],
                                    //           ),
                                    //         )
                                    //     ),
                                    //   );
                                    //   }
                                    // );
                                  },
                                  child: Text('Pop me!')
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff6C63FF),
                                onPrimary: Color(0xffFFFFFF),
                              ),
                              onPressed: (){
                                Navigator.pushNamed(context, PrintScanPage.id);
                              },
                              child: Text('Enroll Fingerprint',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            //row for the two texts that are side by side
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
