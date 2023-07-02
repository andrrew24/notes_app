import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../views/widgets/custom_widgets/custom_text.dart';

void colorsDialog(BuildContext context, void Function(Color) onChanged , Color pickedColor) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const CustomTextW(
              text: "Pick a Color", style: TextStyle(fontSize: 15)),
          content: SingleChildScrollView(
            child: BlockPicker(
                pickerColor: pickedColor, onColorChanged:onChanged ),
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
      },
    );
  }

