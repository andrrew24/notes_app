// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_textfield.dart';

import 'app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
   EditNoteViewBody({
    super.key,
  });

  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Column(
            children: [
              CustomAppBar(
                appBarTitle: "Edit",
                icon: Icons.done,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                  textController: titleController, hintText: "Title"),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                  textController: contentController, hintText: "Content"),
            ],
          ),
        ),
      ),
    );
  }
}
