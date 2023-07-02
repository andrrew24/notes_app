import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_color_picker/dialog.dart';

void colorsDialog(
    BuildContext context, void Function(Color) onChanged, Color pickedColor) {
  showDialog(
    context: context,
    builder: (context) {
      return DialogColors(
        onChanged: onChanged,
        pickedColor: pickedColor,
      );
    },
  );
}
