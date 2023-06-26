

import 'package:flutter/material.dart';

import 'app_bar.dart';

import 'notes_list_view.dart';

class CustomNotesViewBody extends StatelessWidget {
  const CustomNotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical:5,horizontal: 15),
        child: Column(
          children: [
            CustomAppBar(
              appBarTitle: "NOTES",
              icon: Icons.search,
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(child: NotesListView())
          ],
        ),
      ),
    );
  }
}


