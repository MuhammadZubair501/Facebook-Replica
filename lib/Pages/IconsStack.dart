import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Stack StackIcon(bgColor, IconImage, text, top, right) {
  return Stack(
    alignment: Alignment.center, // Center the stack
    children: <Widget>[
      Container(
        width: 50,
        // height: 50,
        decoration: BoxDecoration(
          color: bgColor, // background color with opacity
          shape: BoxShape.circle, // circular shape
        ),

        // color: Colors.blue, // background
      ),
      Positioned(child: Icon(IconImage)),
      Positioned(
        top: top,
        right: right,
        child: Container(
          alignment: Alignment.center,
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            // background color with opacity
            color: Colors.red,
            shape: BoxShape.circle,

            border: Border.all(color: Colors.white, width: 2),

            // circular shape
            // borderRadius: BorderRadius.circular(1)
          ),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
        ),
      ),
    ],
  );
}
