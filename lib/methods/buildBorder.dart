import 'package:flutter/material.dart';


  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: color ?? Colors.white
        )
        );
  }

