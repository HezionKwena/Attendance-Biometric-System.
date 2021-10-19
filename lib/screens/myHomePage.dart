import 'package:flutter/material.dart';
import 'package:hezion_s/shared_widgets/shared_widgets.dart';
import 'package:flutter_sms/flutter_sms.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //method to send text
  void _sendSMS(String message, List<String> recipents) async {
    String _result = await sendSMS(message: message, recipients: recipents)
        .catchError((onError) {
      print(onError);
    });
    print(_result);
  }

  @override
  Widget build(BuildContext context) {
    const kinfoTextStyling = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 13);
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
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Welcome, place your finger on the scanner',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Text(
                            'Use the enrolled fingerprint',
                            style: kinfoTextStyling,
                          ),
                          Text(
                            'Make sure your finger is not wet or dirty',
                            style: kinfoTextStyling,
                          ),
                          Text(
                            'Try again if the first scan is unsuccessful',
                            style: kinfoTextStyling,
                          ),
                          Text(
                            'If still unsuccessful, contact admin',
                            style: kinfoTextStyling,
                          ),
                          //for checking out on how to send a text
                          ElevatedButton(
                              child: Text('Send text'),
                              onPressed: (){
                                String message = "First ever demo, lets do this prime";
                                List<String> recipents = ["0740695071"];

                                _sendSMS(message, recipents);
                              })
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

//used to style the text at the bottom
// TODO: Use meaningful names
// const kinfoTextStyling = TextStyle(
//   fontWeight: FontWeight.w400,
//   fontSize: 13,
// );


