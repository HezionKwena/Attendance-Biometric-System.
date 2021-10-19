import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hezion_s/shared_widgets/shared_widgets.dart';

class MyPrintScanPage extends StatefulWidget {

  static const String id = 'print_scan_screen';
  final String? studentName;
  final String? adminNumber;
  final String? parentsPhoneNumber;

  MyPrintScanPage({this.studentName, this.adminNumber, this.parentsPhoneNumber});

  @override
  _MyPrintScanPageState createState() => _MyPrintScanPageState();
}

class _MyPrintScanPageState extends State<MyPrintScanPage> {

  final String url = " ";

  @override
  void initState() {
    scanFingerPrint();
    super.initState();
  }

  scanFingerPrint() async {
    // TODO: Scan finger print
    // Store finger print as file (firebase storage)
    storefingerPrint();
    // Save Data to firebase
    await saveData();

  }
  storefingerPrint(){
    //TODO: Firebase Storage;

    //TODO: fingerprint url
    setState(() {

    });
  }

  saveData(){
    if(url != null ){
      try{
        //TODO: try to save data to firebase
      }catch(e){print(e);}
    }
  }
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

