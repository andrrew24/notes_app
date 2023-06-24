// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextW extends StatelessWidget {
  
   String text;
    TextStyle style;

  CustomTextW({super.key, required this.text,required this.style});

  

  @override
  Widget build(BuildContext context) {
    
    return Text(
      text,
      style: style,
    );
  }
}