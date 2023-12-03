

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

import '../../models/note.dart';
import '../edit_note/edit_note_view.dart';
import '../widgets/custom_widgets/custom_text.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
    required this.note,
  });

  final Note note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return EditNoteView(
              note: note,
            );
          },
        ));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 20, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: CustomTextW(
                  text: note.title,
                  style: GoogleFonts.poppins(fontSize: 23),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: CustomTextW(
                    text: note.subTitle,
                    style: GoogleFonts.poppins(fontSize: 17),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          content: const CustomTextW(
                            text: "Are you sure you want to delete this note? ",
                            style: TextStyle(fontSize: 15),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  note.delete();
                                  BlocProvider.of<NotesCubit>(context)
                                      .getNotes();
                                      Navigator.pop(context);
                                },
                                child: const CustomTextW(
                                  text: "Confirm",
                                  style: TextStyle(fontSize: 16),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const CustomTextW(
                                  text: "Cancel",
                                  style: TextStyle(fontSize: 16),
                                )),
                          ],
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.delete),
                  color: Colors.black,
                  iconSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, top: 10),
                child: CustomTextW(
                  text: note.time,
                  style: GoogleFonts.poppins(
                      fontSize: 15, color: Colors.white.withOpacity(.6)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
