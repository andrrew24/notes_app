import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_text.dart';

import '../custom_widgets/custom_button.dart';
import '../custom_widgets/custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, content;
  final DateTime time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Form(
        key: formKey,
        autovalidateMode: autoValidateMode,
        child: SizedBox(
          height: 370,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CustomTextField(
                    onSaved: (value) {
                      title = value;
                    },
                    hintText: "Title",
                    maxlines: 1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    onSaved: (value) {
                      content = value;
                    },
                    hintText: "Content",
                    maxlines: 5,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
             CustomColorPicker(),
             const SizedBox(
                height: 20,
              ),
              CustomButton(onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  Note note = Note(
                      title: title!,
                      subTitle: content!,
                      time: DateFormat('MM-dd-yyyy HH:mm').format(time),
                      color: Colors.blueGrey.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
                } else {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}

// CustomButton(
//               ,
//             ),

class CustomColorPicker extends StatelessWidget {
  const CustomColorPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomTextW(text: "Color  ", style: TextStyle(fontSize: 20)),
        CircleAvatar(
          radius: 17,
          backgroundColor: Colors.blue,
        ),
      ],
    );
  }
}
