import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/note.dart';
import '../edit_note_view.dart';
import 'custom_text.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key, required this.note,
  });

  final Note note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const EditNoteView();
          },
        ));
      },
      child: Container(
        decoration:  BoxDecoration(
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
                  onPressed: () {},
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
