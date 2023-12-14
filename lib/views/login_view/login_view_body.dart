import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/views/note_view/notes_view.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_textformfield.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "LOG IN",
          style: TextStyle(fontSize: 30),
        ),
        const Gap(50),
        const CustomTextFormField(
            hintText: "User Name",
            textInputAction: TextInputAction.next,
            initialValue: ""),
        const Gap(25),
        const CustomTextFormField(
            hintText: "Password",
            textInputAction: TextInputAction.done,
            initialValue: ""),
        const Gap(25),
        CustomButton(
            text: "Log In",
            onPressed: () {
              final snackBar = SnackBar(
                  clipBehavior: Clip.none,
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackbarContent(
                    title: "Oh Snap",
                    message: "Username or Password are not Correct",
                    contentType: ContentType.failure,
                  ));
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(snackBar);

              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return const NotesView();
                },
              ));
            })
      ],
    );
  }
}
