import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

import '../custom_widgets/custom_text.dart';

class AddCustomColorPicker extends StatefulWidget {
  const AddCustomColorPicker({super.key});

  @override
  State<AddCustomColorPicker> createState() => _AddCustomColorPickerState();
}

class _AddCustomColorPickerState extends State<AddCustomColorPicker> {
  Color pickedColor = Colors.blue;

  void changeColor(Color color) {
    setState(() {
      pickedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AddNoteCubit>(context).noteColor = pickedColor.value;
    return Row(
      children: [
        const CustomTextW(text: "color  ", style: TextStyle(fontSize: 20)),
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
                          print(
                              "Notecolor from onPressed : ${pickedColor.value}");
                          print(
                              "Notecolor from onPressed : ${BlocProvider.of<AddNoteCubit>(context).noteColor}");
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
          },
          child: CircleAvatar(
            radius: 20,
            backgroundColor: pickedColor,
          ),
        ),
      ],
    );
  }
}
