import 'package:flutter/material.dart';
import 'package:notes_app/constants/constant.dart';

import '../../methods/build_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.padding = const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      this.maxlines = 1,
      this.onSaved
      });


  final String hintText;
  final int maxlines;
  final EdgeInsets padding;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      onSaved: onSaved ,
      cursorColor: kprimaryColor,
      autofocus: false,
      textAlign: TextAlign.start,
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
