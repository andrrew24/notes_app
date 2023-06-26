import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_textfield.dart';

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
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 15, left: 15),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextField(
            textController: title,
            hintText: "Title",
            maxlines: 1,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            textController: content,
            hintText: "Content",
            maxlines: 5,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomButton(),
          const SizedBox(
            height: 1,
          ),
        ],
      ),
    );
  }
}

