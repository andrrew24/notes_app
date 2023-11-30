import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/cubits/search_cubit/cubit/search_cubit.dart';
import 'package:notes_app/views/note_view/note_card.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (value) {
            BlocProvider.of<SearchCubit>(context).searchNote(value);
          },
        ),
        const Gap(20),
        BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
          if (state is SearchSuccess) {
            return Expanded(
              child: ListView.builder(
                itemCount: state.foundNotes.length,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: NoteCard(note: state.foundNotes[index]),
                );
              }),
            );
          } else if (state is SearchNoResult) {
            return const Text("No Result");
          } else {
            return const Text("Error");
          }
        })
      ],
    );
  }
}
