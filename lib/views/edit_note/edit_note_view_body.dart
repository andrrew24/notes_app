import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_textformfield.dart';

import '../../models/note.dart';
import '../widgets/custom_color_picker/edit_custom_color_picker.dart';
import '../widgets/custom_widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });

  final Note note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Column(
              children: [
                CustomAppBar(
                  appBarTitle: "Edit",
                  icon: Icons.done,
                  onPressed: () {
                    widget.note.title = title ?? widget.note.title;
                    widget.note.subTitle = content ?? widget.note.subTitle;
                    widget.note.color =
                        BlocProvider.of<NotesCubit>(context).noteColor ??
                            widget.note.color;
                    widget.note.save();
                    BlocProvider.of<NotesCubit>(context).getNotes();
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomTextFormField(
                  initialValue: widget.note.title,
                  onChanged: (value) {
                    title = value;
                  },
                  textInputAction: TextInputAction.next,
                  hintText: widget.note.title,
                  maxlines: 1,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  initialValue: widget.note.subTitle,
                  onChanged: (value) {
                    content = value;
                  },
                  hintText: widget.note.subTitle,
                  textInputAction: TextInputAction.newline,
                  maxlines: 5,
                ),
                const SizedBox(
                  height: 15,
                ),
                EditCustomColorPicker(
                  note: widget.note,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
