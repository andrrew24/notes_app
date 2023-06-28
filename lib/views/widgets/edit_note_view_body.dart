
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_textfield.dart';

import 'app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  EditNoteViewBody({
    super.key,
  });

 final TextEditingController titleController = TextEditingController();
 final TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Column(
            children: [
              CustomAppBar(
                appBarTitle: "Edit",
                icon: Icons.done,
              ),
               SizedBox(
                height: 25,
              ),
              CustomTextField(
                hintText: "Title",
                maxlines: 1,
              ),
               SizedBox(
                height: 15,
              ),
              CustomTextField(
                hintText: "Content",
                maxlines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
