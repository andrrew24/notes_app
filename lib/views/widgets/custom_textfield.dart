// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:notes_app/constants/constant.dart';

import '../../methods/buildBorder.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.textController,
    required this.hintText,
  });

  final TextEditingController textController;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimaryColor,
      autofocus: true,
      textAlign: TextAlign.start,
      controller: textController,
      decoration: InputDecoration(
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
