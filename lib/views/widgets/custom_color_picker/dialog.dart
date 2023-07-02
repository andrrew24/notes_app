import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../custom_widgets/custom_text.dart';

class DialogColors extends StatelessWidget {
  const DialogColors({
    super.key, required this.onChanged, required this.pickedColor,
  });

 final void Function(Color) onChanged;
  final Color pickedColor;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const CustomTextW(
          text: "Pick a Color", style: TextStyle(fontSize: 15)),
      content: SingleChildScrollView(
        child: BlockPicker(pickerColor: pickedColor, onColorChanged: onChanged),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const CustomTextW(
              text: "Done",
              style: TextStyle(fontSize: 16),
            )),
      ],
    );
  }
}