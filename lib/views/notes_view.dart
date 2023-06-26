// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';

import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  final TextEditingController title = TextEditingController();
  final TextEditingController content = TextEditingController();
  TimeOfDay timeOfDay = TimeOfDay(hour: 0, minute: 0);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:const CustomNotesViewBody(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showBottomSheet(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                context: context,
                builder: (BuildContext context) {
                  return AddNoteBottomSheet(title: title, content: content);
                });
          },
          child: const Icon(Icons.add)),
    );
  }
}


