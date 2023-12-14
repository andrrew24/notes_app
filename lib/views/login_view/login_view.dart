import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/views/note_view/notes_view.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_textformfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
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
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const NotesView();
                      },
                    ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
