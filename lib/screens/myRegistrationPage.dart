import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hezion_s/screens/screens.dart';
import 'package:hezion_s/shared_widgets/shared_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final profileCloud = FirebaseFirestore.instance;

class RegistrationPage extends StatelessWidget with InputValidationMixin {
  static const String id = 'registration_screen';

  final formKey = GlobalKey<FormState>();
  final TextEditingController fullNameTextEditingController =
      TextEditingController();
  final TextEditingController admissionNumberTextEditingController =
      TextEditingController();
  final TextEditingController phoneNumberEditingController =
      TextEditingController();
late String userName;
late String regNumber;
late String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
          onTap: (){
            //Hiding the keyboard with on tap
            FocusScope.of(context).unfocus();
          },
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
                    padding: EdgeInsets.only(top: 40.0, bottom: 10.0),
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
                      key: formKey,
                      child: Column(
                        children: [
                          InputField(
                            validator: (fullName) {
                              if (isFullNameValid(fullName))
                                return null;
                              else
                                return 'Enter a valid name';
                            },
                            controller: fullNameTextEditingController,
                            hint: "Enter your full Name",
                          ),
                          InputField(
                            validator: (admissionNumber) {
                              if (isAdmValid(admissionNumber))
                                return null;
                              else
                                return 'Enter a valid admission number';
                            },
                            controller: admissionNumberTextEditingController,
                            hint: "Enter your Admission Number",
                          ),
                          InputField(
                            validator: (phoneNumber) {
                              if (isPhoneNumberValid(phoneNumber))
                                return null;
                              else
                                return 'Enter a valid Phone Number';
                            },
                            controller: phoneNumberEditingController,
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
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        // TODO: Bug: Hide keyboard when onPress - hii ni kazi yako @Hez
                        // hidekeyboard.true;
                        

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyPrintScanPage(
                                    studentName:
                                        fullNameTextEditingController.text.trim(),
                                    adminNumber:
                                        admissionNumberTextEditingController.text
                                            .trim(),
                                    parentsPhoneNumber:
                                        phoneNumberEditingController.text
                                            .trim())));

                        fullNameTextEditingController.clear();
                        admissionNumberTextEditingController.clear();
                        phoneNumberEditingController.clear();
                      }
                    },
                    text: 'Enroll Fingerprint',
                  ),
                ),
              ]),
      ),
            floatingActionButton: FloatingActionButton.extended(onPressed: (){
              userName = fullNameTextEditingController.text.trim();
              regNumber = admissionNumberTextEditingController.text.trim();
              phoneNumber = phoneNumberEditingController.text.trim();

              try
              {
                if(userName != null && userName != '' && regNumber != null && regNumber != '' && phoneNumber != null && phoneNumber!='')
                  {
                    profileCloud.collection('student').add(
                        {
                          "studentName ": userName,
                          "studentRegNumber" : regNumber,
                          "parentPhoneNumber" : phoneNumber
                        }
                    );
                  }
                else {
                  print('Input required'); //Implement feedback : show dialog box or Toast as input
                }

              }
              on SocketException catch(_){
                print('Not Connected');
              }
            }, label: Text("Save File"),icon: Icon(Icons.cloud_circle),),
    ),
        ));
  }
}

mixin InputValidationMixin {
  bool isFullNameValid(String name) => name.length >= 3;
  bool isAdmValid(String adm) => adm.length == 4;
  bool isPhoneNumberValid(String phoneNumber ) => phoneNumber.length == 10;
}
