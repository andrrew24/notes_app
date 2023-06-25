import 'package:flutter/material.dart';

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
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 60),
          )
        ],
      ),
    );
  }
}
