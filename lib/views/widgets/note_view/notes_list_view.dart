import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_text.dart';


import 'note_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return notes.isEmpty ? const Center(child: CustomTextW(text: "ADD SOME NOTES✨", style: TextStyle(fontSize: 16)))
        :ListView.builder(
          physics:const BouncingScrollPhysics(),
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: NoteCard(
                note: notes[index],
              ),
            );
          },
        )
        ;
      },
    );
  }
}
