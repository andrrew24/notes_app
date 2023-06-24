

import 'package:flutter/material.dart';

import 'app_bar.dart';

import 'notes_list_view.dart';

class CustomNotesViewBody extends StatelessWidget {
  const CustomNotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              height: 30,
            ),
            Expanded(child: NotesListView())
          ],
        ),
      ),
    );
  }
}


