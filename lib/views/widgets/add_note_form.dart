import 'package:flutter/cupertino.dart';

import 'custom_button.dart';
import 'custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const  AddNoteForm({
    super.key,
    required this.title,
    required this.content,
  });

  final TextEditingController title;
  final TextEditingController content;

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
 final GlobalKey <FormState> formKey = GlobalKey();
 final AutovalidateMode validateMode = AutovalidateMode.disabled; 
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: validateMode ,
      child: Padding(
        padding: const EdgeInsets.only(top: 50, right: 15, left: 15),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
              textController: widget.title,
              hintText: "Title",
              maxlines: 1,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              textController: widget.content,
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
      ),
    );
  }
}
