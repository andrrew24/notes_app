// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:notes_app/constants/constant.dart';

import '../../methods/buildBorder.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.textController,
      required this.hintText,
      this.padding = const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      this.maxlines = 1});

  final TextEditingController textController;
  final String hintText;
  final int maxlines;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimaryColor,
      autofocus: true,
      textAlign: TextAlign.start,
      controller: textController,
      maxLines: maxlines,
      decoration: InputDecoration(
        contentPadding: padding,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kprimaryColor,
        ),
        enabledBorder: buildBorder(kprimaryColor),
        focusedBorder: buildBorder(kprimaryColor),
        border: buildBorder(),
      ),
    );
  }
}
