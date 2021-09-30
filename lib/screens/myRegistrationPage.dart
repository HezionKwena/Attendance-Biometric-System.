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
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Logo
              Align(
                alignment: Alignment.topLeft,
                child: Hero(
                  tag: 'logo',
                  child: StackedContainers(),
                ),
              ),
              // my Header
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 40.0, bottom: 30.0),
                  child: Column(
                    children: [
                      Text("Welcome !",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          )),
                      Text("Let\'s help you enroll",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ))
                    ],
                  )),

              // My Form
              Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Form(
                    child: Column(
                      children: [
                        InputField(
                          hint: "Enter your full Name",
                        ),
                        InputField(
                          hint: "Enter your Admission Number",
                        ),
                        InputField(
                          hint: "Enter your Parent\'s Phone Number",
                        ),
                      ],
                    ),
                  )),
              Container(
                  child: Text(
                "Pop me!",
                style: TextStyle(fontSize: 18, color: Colors.blue.shade500),
              )),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: MyButton(
                  onPressed: () {
                    Navigator.pushNamed(context, PrintScanPage.id);
                  },
                  text: 'Enroll Fingerprint',
                ),
              ),
            ]),
      ),
    ));
  }
}
