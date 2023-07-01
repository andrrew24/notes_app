import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../custom_text.dart';

class CustomColorPicker extends StatefulWidget {
  const CustomColorPicker({super.key});

  @override
  State<CustomColorPicker> createState() => _CustomColorPickerState();
}

class _CustomColorPickerState extends State<CustomColorPicker> {
  Color pickedColor = Colors.blue;

  void changeColor(Color color) {
    setState(() => pickedColor = color);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomTextW(text: "Color  ", style: TextStyle(fontSize: 20)),
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const CustomTextW(
                      text: "Pick a Color", style: TextStyle(fontSize: 15)),
                  content: SingleChildScrollView(
                    child: BlockPicker(
                        pickerColor: pickedColor, onColorChanged: changeColor),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const CustomTextW(
                          text: "Done",
                          style: TextStyle(fontSize: 16),
                        ))
                  ],
                );
              },
            );
          },
          child: CircleAvatar(
            radius: 17,
            backgroundColor: pickedColor,
          ),
        ),
      ],
    );
  }
}
