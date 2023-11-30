import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note/add_note_bottom_sheet.dart';

import 'package:notes_app/views/note_view/notes_view_body.dart';

class NotesView extends StatelessWidget {
 
 const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomNotesViewBody(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled:true ,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                context: context,
                builder: (BuildContext context) {
                  return const AddNoteBottomSheet();
                });
          },
          child: const Icon(Icons.add)),
    );
  }
}
