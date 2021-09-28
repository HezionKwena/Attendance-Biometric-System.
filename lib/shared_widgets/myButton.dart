import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  const MyButton({Key? key, required this.onPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: MediaQuery.of(context).size.width * 0.90,
      height: MediaQuery.of(context).size.height * 0.09,
      color: Color(0xff6C63FF),
      child: Text(text, style: TextStyle(
        color:Colors.white,
        fontWeight: FontWeight.bold,
      ),),
      onPressed: ()=> onPressed(),);
  }
}
