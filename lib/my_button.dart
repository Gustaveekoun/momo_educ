// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButton({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icons
        Container(
          height: 85,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            //color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        // text
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
         //La barre
                Divider(
                  color: Colors.grey, //color of divider
                  height: 5, //height spacing of divider
                  thickness: 2, //thickness of divier line
                  indent: 25, //spacing at the start of divider
                  endIndent: 25, //spacing at the end of divider
                ),
      ],
    );
  }
}
