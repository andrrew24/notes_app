import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_note_form.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
    required this.title,
    required this.content,
  });

  final TextEditingController title;
  final TextEditingController content;

  @override
  Widget build(BuildContext context) {
    return const AddNoteForm();
  }
}

