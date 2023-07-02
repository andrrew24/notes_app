import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

import '../../../methods/colors_dialog.dart';
import '../custom_widgets/custom_text.dart';

class CustomColorPicker extends StatefulWidget {
  const CustomColorPicker({super.key});

  @override
  State<CustomColorPicker> createState() => _CustomColorPickerState();
}

class _CustomColorPickerState extends State<CustomColorPicker> {
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
        const CustomTextW(text: "Color  ", style: TextStyle(fontSize: 20)),
        GestureDetector(
          onTap: () {
            colorsDialog(context, changeColor, pickedColor);
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
