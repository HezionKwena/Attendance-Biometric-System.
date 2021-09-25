import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hezion_s/shared_widgets/shared_widgets.dart';

class PrintScanPage extends StatefulWidget {

  static const String id = 'print_scan_screen';

  @override
  _PrintScanPageState createState() => _PrintScanPageState();
}

class _PrintScanPageState extends State<PrintScanPage> {
  @override
  Widget build(BuildContext context) {
    const kinfoTextStyling = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 13,);
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
                      child: Container(
                        child: SvgPicture.asset('assets/icons/print.svg'),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
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
                            'Make sure your finger is not wet or dirty',
                            style: kinfoTextStyling,
                          ),
                          Text(
                            'Try again if the first attempt is unsuccessful',
                            style: kinfoTextStyling,
                          ),
                          Text(
                            'If still unsuccessful, contact admin',
                            style: kinfoTextStyling,
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

//used to style the text at the bottom
// TODO: avoid global variables
// const kinfoTextStyling = TextStyle(
//   fontWeight: FontWeight.w400,
//   fontSize: 13,
// );
