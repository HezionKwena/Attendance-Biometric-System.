import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hezion_s/shared_widgets/stacked_containers.dart';
import 'package:hezion_s/screens/myPrintScanPage.dart';


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
              //this hero widget ads an animation
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
                              //turn this into a button and use it to navigate to the print_scan_page
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

//This class is instantiated every time we need a new textfield for input
//its here as this is the omly page with the fields, no need for a whole dart file
class InputField extends StatelessWidget {

  //Constructor for passing the unique hint and the functions
  InputField({required this.hint,});

  final String hint;
//void Function function;

  @override
  Widget build(BuildContext context) {
    return TextField(

      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffbdb9ff),
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.black38,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          borderSide: BorderSide.none,
        ),
      ),
      onChanged: (value){
        print(value);
      },//expects a method that uses the value,
    );
  }
}
