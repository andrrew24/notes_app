import 'package:flutter/cupertino.dart';

import 'custom_button.dart';
import 'custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Padding(
        padding: const EdgeInsets.only(top: 50, right: 15, left: 15),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
              onSaved: (value) {
                title = value;
              },
              hintText: "Title",
              maxlines: 1,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              onSaved: (value) {
                content = value;
              },
              hintText: "Content",
              maxlines: 5,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            const SizedBox(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
