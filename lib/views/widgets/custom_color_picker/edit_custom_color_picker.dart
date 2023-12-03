import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

import '../../../models/note.dart';
import '../custom_widgets/custom_text.dart';

class EditCustomColorPicker extends StatefulWidget {
  const EditCustomColorPicker({super.key ,required this.note});

  final Note note;

  @override
  State<EditCustomColorPicker> createState() => _EditCustomColorPickerState();
}

class _EditCustomColorPickerState extends State<EditCustomColorPicker> {
  late Color pickedColor ;

  void changeColor(Color color) {
    setState(() {
      pickedColor = color;
    });
    print("color from change color : ${pickedColor.value}");
  }
  @override
  void initState() {
    super.initState();
    pickedColor = Color(widget.note.color);
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NotesCubit>(context).noteColor = pickedColor.value;
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
                              "Notecolor from onPressed : ${BlocProvider.of<NotesCubit>(context).noteColor}");
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
