import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/constants/constant.dart';

import '../../../methods/build_border.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.padding = const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      this.maxlines = 1,
      this.onChanged,
      this.onSaved,
      required this.textInputAction,
      required this.initialValue});

  final String hintText;
  final String initialValue;
  final int maxlines;
  final EdgeInsets padding;
  final TextInputAction textInputAction;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      textInputAction: textInputAction,
      onSaved: onSaved,
      onChanged: onChanged,
      cursorColor: kprimaryColor,
      autofocus: false,
      textAlign: TextAlign.start,
      maxLines: maxlines,
      decoration: InputDecoration(
        contentPadding: padding,
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(fontSize: 16),
        enabledBorder: buildBorder(kprimaryColor),
        focusedBorder: buildBorder(kprimaryColor),
        border: buildBorder(),
      ),
    );
  }
}
