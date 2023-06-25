// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:notes_app/views/widgets/custom_textfield.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  NotesView({super.key});

  final TextEditingController title = TextEditingController();
  final TextEditingController content = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomNotesViewBody(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                context: context,
                builder: (BuildContext context) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 50, right: 15, left: 15),
                    child: Column(
                      children: [
                        CustomTextField(
                          textController: title,
                          hintText: "Title",
                        ),
                        CustomTextField(
                            textController: content, hintText: "Content")
                      ],
                    ),
                  );
                });
          },
          child: Icon(Icons.add)),
    );
  }
}
