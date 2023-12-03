import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/search_cubit/cubit/search_cubit.dart';
import 'package:notes_app/views/note_view/notes_view.dart';
import 'package:notes_app/views/search_note/search_view_body.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_app_bar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SearchCubit(),
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
          child: Column(
            children: [
              CustomAppBar(
                appBarTitle: "SEARCH",
                icon: FontAwesomeIcons.arrowLeft,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const NotesView();
                    },
                  ));
                },
              ),
              const Expanded(child: SearchViewBody())
            ],
          ),
        )),
      ),
    );
  }
}
