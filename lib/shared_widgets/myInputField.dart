
//This class is instantiated every time we need a new textfield for input
//its here as this is the omly page with the fields, no need for a whole dart file
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  //Constructor for passing the unique hint and the functions
  InputField({required this.hint,});

  final String hint;
//void Function function;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
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
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            // borderSide: BorderSide.none,

          ),
        ),
        onChanged: (value){
          print(value);
        },//expects a method that uses the value,
      ),
    );
  }
}
