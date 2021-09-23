import 'package:flutter/material.dart';

class StackedContainers extends StatelessWidget {
  const StackedContainers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      //the two rectangles
      children: [
        Container(
          width: 170.0,
          height: 100.0,
          color: Color(0x806C63FF),
        ),
        Positioned(
          top: 20,
          child: Container(
            width: 140.12,
            height: 100,
            color: Color(0x806C63FF),
          ),
        ),
      ],
      clipBehavior: Clip.none,
    );
  }
}