import 'package:flutter/material.dart';
import 'package:notes_app/views/login_view/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: LoginViewBody(),
        ),
      ),
    );
  }
}
