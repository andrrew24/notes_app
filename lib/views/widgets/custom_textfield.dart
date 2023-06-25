import 'package:flutter/material.dart';


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
      autofocus: true,
      textAlign: TextAlign.start,
      controller: textController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        hintText: hintText,
      ),
    );
  }
}