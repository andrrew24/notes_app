// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'note_card.dart';

class CustomNotesViewBody extends StatelessWidget {
  const CustomNotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(
                height: 50,
              ),
               NoteCard()
              ],
          ),
        ),
      ),
    );
  }
}


