import 'package:flutter/material.dart';
import 'package:notes_app/models/note.dart';
import 'package:notes_app/views/edit_note/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return EditNoteViewBody(note: note,);
  }
}
