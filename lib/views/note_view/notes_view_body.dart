import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/search_note/search_view.dart';

import '../widgets/custom_widgets/custom_app_bar.dart';

import 'notes_list_view.dart';

class CustomNotesViewBody extends StatefulWidget {
  const CustomNotesViewBody({
    super.key,
  });

  @override
  State<CustomNotesViewBody> createState() => _CustomNotesViewBodyState();
}

class _CustomNotesViewBodyState extends State<CustomNotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).getNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: Column(
          children: [
            CustomAppBar(
              appBarTitle: "NOTES",
              icon: Icons.search,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SearchView();
                  },
                ));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            const Expanded(child: NotesListView())
          ],
        ),
      ),
    );
  }
}
